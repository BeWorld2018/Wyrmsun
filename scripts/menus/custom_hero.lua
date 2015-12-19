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
--      (c) Copyright 2015 by Andrettin
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

function CustomHeroCreationMenu(world, quest_menu)
	local menu = WarGameMenu(panel(5))
	menu:setSize(352, 352)
    menu:setPosition((Video.Width - menu:getWidth()) / 2, (Video.Height - menu:getHeight()) / 2)
	menu:addLabel(_("Create Custom Hero"), 176, 11)
	
	local sizeX = 352
	local sizeY = 352

	local hero_civilization_list = {}
	if (world == "Earth") then
		table.insert(hero_civilization_list, "Germanic")
		if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Gylve's Realm")) then
			table.insert(hero_civilization_list, "Teuton")
		end
	elseif (world == "Nidavellir") then
		table.insert(hero_civilization_list, "Dwarf")
		table.insert(hero_civilization_list, "Gnome")
	end
	local hero_class_ident_list = {}
	local hero_class_list = {}
	local trait_ident_list = {}
	local trait_list = {}
	local variation_list = {}
	
	local hero_name
	local hero_family_name
	local hero_civilization
	local hero_class
	local trait
	local variation

	local function ClassChanged()
		trait_ident_list = nil
		trait_ident_list = GetUnitTypeData(hero_class_ident_list[hero_class:getSelected() + 1], "Traits")
		table.sort(trait_ident_list)
		trait_list = nil
		trait_list = {}
		for i=1,table.getn(trait_ident_list) do
			table.insert(trait_list, CUpgrade:Get(trait_ident_list[i]).Name .. ": " .. GetUpgradeEffectsString(trait_ident_list[i]))
		end
		trait:setList(trait_list)
		trait:setSize(236, 20)
		trait:setSelected(0)
		
		variation_list = nil
		variation_list = {}
		local variation_ident_list = GetUnitTypeData(hero_class_ident_list[hero_class:getSelected() + 1], "Variations")
		for i=1,table.getn(variation_ident_list) do
			table.insert(variation_list, FullyCapitalizeString(string.gsub(variation_ident_list[i], "-", " ")))
		end
		table.sort(variation_list)
		variation:setList(variation_list)
		variation:setSize(236, 20)
		variation:setSelected(0)
	end
	
	local function CivilizationChanged()
		hero_class_ident_list = nil
		hero_class_ident_list = {}
		hero_class_list = nil
		hero_class_list = {}
		for i, unitName in ipairs(Units) do
			if (
				string.find(unitName, "upgrade-") == nil
				and GetUnitTypeData(unitName, "Civilization") == string.lower(hero_civilization_list[hero_civilization:getSelected() + 1])
				and GetUnitTypeData(unitName, "Faction") == ""
				and GetUnitTypeData(unitName, "Class") ~= "worker"
				and GetUnitTypeData(unitName, "Class") ~= "militia"
				and GetUnitTypeData(unitName, "Class") ~= "spearman"
				and GetUnitTypeData(unitName, "Class") ~= "priest"
				and GetUnitTypeData(unitName, "Level") == 1
				and GetUnitTypeData(unitName, "organic")
			) then
				table.insert(hero_class_ident_list, unitName)
				table.insert(hero_class_list, GetUnitTypeData(unitName, "Name"))
			end
		end
		hero_class:setList(hero_class_list)
		hero_class:setSize(236, 20)
		
		hero_class:setSelected(0)
		ClassChanged()
	
		local generated_personal_name = ""
		while (generated_personal_name == "" or GetArrayIncludes(GetCustomHeroes(), generated_personal_name)) do
			generated_personal_name = GeneratePersonalName(string.lower(hero_civilization_list[hero_civilization:getSelected() + 1]), hero_class_ident_list[hero_class:getSelected() + 1])
		end
		hero_name:setText(generated_personal_name)
	end
	
	menu:addLabel(_("Name:"), 10, 12 + 36 * 1, Fonts["game"], false)
	hero_name = menu:addTextInputField("", (sizeX / 2) - 60 - 10, 11 + 36 * 1, 120)

	menu:addLabel(_("Surname:"), 10, 12 + 36 * 2, Fonts["game"], false)
	hero_family_name = menu:addTextInputField("", (sizeX / 2) - 60 - 10, 11 + 36 * 2, 120)

	menu:addLabel(_("Civilization:"), 10, 14 + 36 * 3, Fonts["game"], false)
	hero_civilization = menu:addDropDown(hero_civilization_list, (sizeX / 2) - 60 - 10, 11 + 36 * 3, function(dd) CivilizationChanged() end)
	hero_civilization:setSize(236, 20)
	
	menu:addLabel(_("Class:"), 10, 14 + 36 * 4, Fonts["game"], false)
	hero_class = menu:addDropDown(hero_class_list, (sizeX / 2) - 60 - 10, 11 + 36 * 4, function(dd) ClassChanged() end)
	hero_class:setSize(236, 20)
	
	menu:addLabel(_("Trait:"), 10, 14 + 36 * 5, Fonts["game"], false)
	trait = menu:addDropDown(trait_list, (sizeX / 2) - 60 - 10, 11 + 36 * 5, function(dd) end)
	trait:setSize(236, 20)
	
	menu:addLabel(_("Hair:"), 10, 14 + 36 * 6, Fonts["game"], false)
	variation = menu:addDropDown(variation_list, (sizeX / 2) - 60 - 10, 11 + 36 * 6, function(dd) end)
	variation:setSize(236, 20)
	variation:setSelected(0)
	
	hero_civilization:setSelected(0)
	CivilizationChanged()
	
	menu:addFullButton("Create ~!Hero", "h", 176 - (224 / 2), 352 - 40 * 2,
		function()
			local hero_full_name = hero_name:getText()
			if (hero_family_name:getText() ~= "") then
				hero_full_name = hero_full_name .. " " .. hero_family_name:getText()
			end
			
			if (hero_name:getText() == "") then
				GenericDialog("Error", "The hero's name cannot be empty.")
			elseif (GetArrayIncludes(GetCustomHeroes(), hero_full_name)) then
				GenericDialog("Error", "There is already a custom hero with that combination of name and surname.")
			else
				DefineCustomHero(hero_full_name, {
					Name = hero_name:getText(),
					Dynasty = hero_family_name:getText(),
					Civilization = string.lower(hero_civilization_list[hero_civilization:getSelected() + 1]),
					Type = hero_class_ident_list[hero_class:getSelected() + 1],
					Trait = trait_ident_list[trait:getSelected() + 1],
					HairVariation = string.lower(string.gsub(variation_list[variation:getSelected() + 1], " ", "-"))
				})
				SaveCustomHero(hero_full_name)
				menu:stop()
				quest_menu:stop()
				RunQuestMenu(world)
			end
		end
	)
	menu:addFullButton("~!Cancel", "c", 176 - (224 / 2), 352 - 40 * 1,
		function()
			menu:stop()
		end
	)
	menu:run()
end

function CustomHeroCivilizationAdvancementMenu(world, quest_menu)
	local menu = WarGameMenu(panel(5))
	menu:setSize(352, 352)
    menu:setPosition((Video.Width - menu:getWidth()) / 2, (Video.Height - menu:getHeight()) / 2)
	menu:addLabel(_("Create Custom Hero"), 176, 11)
	
	local sizeX = 352
	local sizeY = 352

	local hero_civilization_list = {}
	if (GetCustomHeroData(GetCurrentCustomHero(), "Civilization") == "germanic" and GetArrayIncludes(wyr.preferences.QuestsCompleted, "Gylve's Realm")) then
		table.insert(hero_civilization_list, "Teuton")
	end
	
	local hero_name
	local hero_family_name
	local hero_civilization

	local function CivilizationChanged()
		local generated_personal_name = ""
		while (generated_personal_name == "" or GetArrayIncludes(GetCustomHeroes(), generated_personal_name)) do
			generated_personal_name = GeneratePersonalName(string.lower(hero_civilization_list[hero_civilization:getSelected() + 1]), GetCivilizationClassUnitType(GetUnitTypeData(GetCustomHeroData(GetCurrentCustomHero(), "Type"), "Class"), string.lower(hero_civilization_list[hero_civilization:getSelected() + 1])))
		end
		hero_name:setText(generated_personal_name)
	end
	
	menu:addLabel(_("Name:"), 10, 12 + 36 * 1, Fonts["game"], false)
	hero_name = menu:addTextInputField("", (sizeX / 2) - 60 - 10, 11 + 36 * 1, 120)

	menu:addLabel(_("Surname:"), 10, 12 + 36 * 2, Fonts["game"], false)
	hero_family_name = menu:addTextInputField("", (sizeX / 2) - 60 - 10, 11 + 36 * 2, 120)

	menu:addLabel(_("Civilization:"), 10, 14 + 36 * 3, Fonts["game"], false)
	hero_civilization = menu:addDropDown(hero_civilization_list, (sizeX / 2) - 60 - 10, 11 + 36 * 3, function(dd) CivilizationChanged() end)
	hero_civilization:setSize(236, 20)
	
	hero_civilization:setSelected(0)
	CivilizationChanged()
	
	menu:addFullButton("~!Update Hero", "u", 176 - (224 / 2), 352 - 40 * 2,
		function()
			local hero_full_name = hero_name:getText()
			if (hero_family_name:getText() ~= "") then
				hero_full_name = hero_full_name .. " " .. hero_family_name:getText()
			end
			
			local non_current_custom_heroes = {}
			local custom_heroes = GetCustomHeroes()
			for i=1,table.getn(custom_heroes) do
				if (GetCurrentCustomHero() ~= custom_heroes[i]) then
					table.insert(non_current_custom_heroes, custom_heroes[i])
				end
			end
			
			if (hero_name:getText() == "") then
				GenericDialog("Error", "The hero's name cannot be empty.")
			elseif (GetArrayIncludes(non_current_custom_heroes, hero_full_name)) then
				GenericDialog("Error", "There is already another custom hero with that combination of name and surname.")
			else
				ChangeCustomHeroCivilization(GetCurrentCustomHero(), string.lower(hero_civilization_list[hero_civilization:getSelected() + 1]), hero_name:getText(), hero_family_name:getText())
				menu:stop()
				quest_menu:stop()
				RunQuestMenu(world)
			end
		end
	)
	menu:addFullButton("~!Cancel", "c", 176 - (224 / 2), 352 - 40 * 1,
		function()
			menu:stop()
		end
	)
	menu:run()
end
