--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      (c) Copyright 2014-2018 by Andrettin
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

function RunCampaignMenu()
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

	if not (IsMusicPlaying()) then
		PlayMusicName("MenuTheme")
	end

	local campaign_description
	local highest_completed_difficulty
	local faction_name
	local no_randomness
	local no_time_of_day
	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	menu:addLabel(_("~<Scenarios~>"), offx + 320, offy + 104 + 36*-2)

	no_randomness = menu:addImageCheckBox(_("No Randomness"), offx + 480, offy + 10 + 270 + 3,
		function()
			wyr.preferences.NoRandomness = no_randomness:isMarked()
			SavePreferences()
		end
	)
	no_randomness:setMarked(wyr.preferences.NoRandomness)
	
	no_time_of_day = menu:addImageCheckBox(_("No Day/Night Cycle"), offx + 480, offy + 10 + 300 + 3,
		function()
			wyr.preferences.NoTimeOfDay = no_time_of_day:isMarked()
			SavePreferences()
		end
	)
	no_time_of_day:setMarked(wyr.preferences.NoTimeOfDay)
	
	local difficulty_list = {_("Easy"), _("Normal"), _("Hard"),_("Brutal")}
	local difficulty = nil
	
	menu:addLabel(_("Difficulty:"), offx + 244, offy + (10 + 300) - 20, Fonts["game"], false)
	difficulty = menu:addDropDown(difficulty_list, offx + 244, offy + 10 + 300,
		function(dd)
			wyr.preferences.Difficulty = difficulty:getSelected() + 1
			SavePreferences()
		end
	)
	difficulty:setSize(152, 20)
	difficulty:setSelected(wyr.preferences.Difficulty - 1)

	local campaign_dd
	local potential_campaigns = GetCampaigns()
	local campaign_ident_list = {}
	local campaign_list = {}
	for i = 1, table.getn(potential_campaigns) do
		if (GetCampaignData(potential_campaigns[i], "Hidden") == false) then
			local required_quests = GetCampaignData(potential_campaigns[i], "RequiredQuests")
			local completed_prerequisites = true
			for j = 1, table.getn(required_quests) do
				if (GetQuestData(required_quests[j], "Completed") == false) then
					completed_prerequisites = false
					break
				end
			end
			if (completed_prerequisites) then
				table.insert(campaign_ident_list, potential_campaigns[i])
			end
		end
	end
	
	local function compare_campaign(a, b)
		if (GetCivilizationData(GetFactionData(GetCampaignData(a, "Faction"), "Civilization"), "Species") ~= GetCivilizationData(GetFactionData(GetCampaignData(b, "Faction"), "Civilization"), "Species")) then
			return GetCivilizationData(GetFactionData(GetCampaignData(a, "Faction"), "Civilization"), "Species") < GetCivilizationData(GetFactionData(GetCampaignData(b, "Faction"), "Civilization"), "Species")
		elseif (GetCampaignData(a, "StartYear") ~= GetCampaignData(b, "StartYear")) then
			return GetCampaignData(a, "StartYear") < GetCampaignData(b, "StartYear")
		else
			return a < b
		end
	end
		
	table.sort(campaign_ident_list, compare_campaign)

	for i=1,table.getn(campaign_ident_list) do
		local campaign_name = GetCampaignData(campaign_ident_list[i], "Name")
		if not (GetQuestData(campaign_ident_list[i], "Completed")) then
			campaign_name = campaign_name .. " ~<(!)~>"
		end
		table.insert(campaign_list, campaign_name)
	end
	
	local function UpdateCampaignDescription()
			faction_name = _("Faction:").. " " .. GetFactionData(GetCampaignData(campaign_ident_list[campaign_dd:getSelected() + 1], "Faction"), "Name") .. " (" .. GetCivilizationData(GetFactionData(GetCampaignData(campaign_ident_list[campaign_dd:getSelected() + 1], "Faction"), "Civilization"), "Display") .. ")"
	
			highest_completed_difficulty = "Highest Completed Difficulty: "
			if (GetQuestData(campaign_ident_list[campaign_dd:getSelected() + 1], "HighestCompletedDifficulty") == DifficultyEasy) then
				highest_completed_difficulty = highest_completed_difficulty .. "Easy"
			elseif (GetQuestData(campaign_ident_list[campaign_dd:getSelected() + 1], "HighestCompletedDifficulty") == DifficultyNormal) then
				highest_completed_difficulty = highest_completed_difficulty .. "Normal"
			elseif (GetQuestData(campaign_ident_list[campaign_dd:getSelected() + 1], "HighestCompletedDifficulty") == DifficultyHard) then
				highest_completed_difficulty = highest_completed_difficulty .. "Hard"
			elseif (GetQuestData(campaign_ident_list[campaign_dd:getSelected() + 1], "HighestCompletedDifficulty") == DifficultyBrutal) then
				highest_completed_difficulty = highest_completed_difficulty .. "Brutal"
			else
				highest_completed_difficulty = highest_completed_difficulty .. "None"
			end
			
			campaign_description:setCaption(faction_name .. "\n\n" .. _("Description: ") .. GetCampaignData(campaign_ident_list[campaign_dd:getSelected() + 1], "Description") .. "\n\n" .. highest_completed_difficulty)
			campaign_description:adjustSize()
	end
	
	
	campaign_dd = menu:addDropDown(campaign_list, (Video.Width / 2) - (240 / 2), offy + 104 + 36*0,
		function(dd)
			SetCurrentCampaign(campaign_ident_list[campaign_dd:getSelected() + 1])
			UpdateCampaignDescription()
		end
	)
	campaign_dd:setSize(240, 20)
	if (GetCurrentCampaign() ~= "") then
		campaign_dd:setSelected(GetElementIndexFromArray(campaign_ident_list, GetCurrentCampaign()) - 1)
	else
		campaign_dd:setSelected(0)
		SetCurrentCampaign(campaign_ident_list[1])
	end
	
	campaign_description = menu:addMultiLineLabel("", ((Video.Width - 640) / 2) + 32, offy + 104 + 36*1.5, Fonts["game"], false, Video.Width - (Video.Width - 640) - 64)
	
	UpdateCampaignDescription()

	menu:addFullButton(_("~!Start Scenario"), "s", offx + 208, offy + 212 + (36 * 4),
		function()
			RunningScenario = true
			GetMapInfo("scripts/map_templates/campaign.smp")
			GameSettings.NoRandomness = wyr.preferences.NoRandomness
			GameSettings.NoTimeOfDay = wyr.preferences.NoTimeOfDay
			GameSettings.Difficulty = wyr.preferences.Difficulty
			menu:stop()
			RunMap("scripts/map_templates/campaign.smp")
		end
	)
	
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 212 + (36 * 5),
		function()
			SetCurrentCampaign("")
			menu:stop();
			RunSinglePlayerGameMenu()
		end
	)

	menu:run()
end
