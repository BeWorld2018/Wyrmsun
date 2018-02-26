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
--      (c) Copyright 2015-2018 by Andrettin
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

function ChooseFaction(old_civilization, old_faction)
	local potential_factions
	local faction_list = {}
	local faction_name_list = {}
	local faction_dd
	local chosen_faction
	local current_civilization = GetPlayerData(GetThisPlayer(), "RaceName")
	
	potential_factions = GetFactions(current_civilization)
	
	for i=1,table.getn(potential_factions) do
		if (GetFactionData(potential_factions[i], "Playable")) then
			if (
				(GetFactionData(potential_factions[i], "Type") == "tribe" or GetFactionData(potential_factions[i], "Type") == "polity") -- trading companies, mercenary squads and etc. are not playable
				and (GetFactionData(potential_factions[i], "Type") == "polity") == (GetCivilizationClassUnitType("writing", current_civilization) ~= nil and GetPlayerData(GetThisPlayer(), "Allow", GetCivilizationClassUnitType("writing", current_civilization)) == "R")
			) then -- if player has writing and faction is a polity, or if player doesn't have writing and faction is a tribe
				if (IsNetworkGame() or GetFactionExists(potential_factions[i]) == false or GetFactionPlayer(potential_factions[i]) == GetThisPlayer()) then -- in single-player only factions that aren't already being used can be chosen
					table.insert(faction_list, potential_factions[i])
				end
			end
		end
	end
	
	table.sort(faction_list)
	
	if (table.getn(faction_list) == 0) then
		return;
	end
	
	for i=1,table.getn(faction_list) do
		table.insert(faction_name_list, _(GetFactionData(faction_list[i], "Name")))
	end

	if (GameRunning and not IsNetworkGame()) then
		SetGamePaused(true)
	end
	
	local menu
	
	menu = WarGameMenu(panel(1))

	menu:addLabel(_("Choose Your Faction"), 128, 11)
	
	local l
	
	faction_dd = menu:addDropDown(faction_name_list, (256 / 2 - (152 / 2)), 55 + 26*1,
	function(dd)
		chosen_faction = faction_list[faction_dd:getSelected() + 1]
		if (GetFactionData(faction_list[faction_dd:getSelected() + 1], "FactionUpgrade") ~= "") then
			l:setCaption(_("Default Color:") .. " " .. _(CapitalizeString(GetFactionData(faction_list[faction_dd:getSelected() + 1], "Color"))) .. "\n\n" .. _("Effects:") .. " " .. GetUpgradeData(GetFactionData(faction_list[faction_dd:getSelected() + 1], "FactionUpgrade"), "EffectsString"))
		else
			l:setCaption(_("Default Color:") .. " " .. _(CapitalizeString(GetFactionData(faction_list[faction_dd:getSelected() + 1], "Color"))))
		end
	end)
	faction_dd:setSize(152, 20)
	faction_dd:setSelected(0)
	
	-- faction effects
	l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(228, 192)
	l:setLineWidth(228)
	menu:add(l, 14, 3 + (32 * 4))
	if (GetFactionData(faction_list[faction_dd:getSelected() + 1], "FactionUpgrade") ~= "") then
		l:setCaption(_("Default Color:") .. " " .. _(CapitalizeString(GetFactionData(faction_list[faction_dd:getSelected() + 1], "Color"))) .. "\n\n" .. _("Effects:") .. " " .. GetUpgradeData(GetFactionData(faction_list[faction_dd:getSelected() + 1], "FactionUpgrade"), "EffectsString"))
	else
		l:setCaption(_("Default Color:") .. " " .. _(CapitalizeString(GetFactionData(faction_list[faction_dd:getSelected() + 1], "Color"))))
	end

	local ok_button = menu:addFullButton(_("~!OK", "o", 16, 248 - (36 * 0),
		function()
			if (GameRunning and not IsNetworkGame()) then
				SetGamePaused(false)
			end
			NetworkSetFaction(GetThisPlayer(), faction_list[faction_dd:getSelected() + 1])
			StopMusic()
			PlayMusicByGroupAndFactionRandom("map", GetPlayerData(GetThisPlayer(), "RaceName"), GetPlayerData(GetThisPlayer(), "Faction"))
			menu:stop()
		end
	)
	
	menu:addButton("", "return", -1, -1,
		function()
			if (GameRunning and not IsNetworkGame()) then
				SetGamePaused(false)
			end
			NetworkSetFaction(GetThisPlayer(), faction_list[faction_dd:getSelected() + 1])
			StopMusic()
			PlayMusicByGroupAndFactionRandom("map", GetPlayerData(GetThisPlayer(), "RaceName"), GetPlayerData(GetThisPlayer(), "Faction"))
			menu:stop()
		end,
		{0, 0}
	)	
	
	if (GameRunning) then
		menu:run(false)
	else
		menu:run()
	end
end
