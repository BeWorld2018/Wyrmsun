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
--      grand_strategy_factions.lua - Defines the grand strategy factions.
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

-- Dwarven heroes

DefineGrandStrategyHero("Modsognir", {
	Name = "Modsognir",
	DefaultType = "unit-hero-modsognir",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
	Year = -3000,
	DeathYear = -3000 + 30 -- estimated
})

DefineGrandStrategyHero("Durin", {
	Name = "Durin",
	DefaultType = "unit-hero-durin",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
	Year = -3000,
	DeathYear = -3000 + 30 -- estimated
})

DefineGrandStrategyHero("Thursagan", {
	Name = "Thursagan",
	DefaultType = "unit-hero-thursagan",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 40 + 10 -- died in 40 AD of a violent death, but was already rather old; +10 years
})

DefineGrandStrategyHero("Baglur", {
	Name = "Baglur",
	DefaultType = "unit-hero-baglur",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 40 + 10 -- died in 40 AD of a violent death, but was already rather old; +10 years
})

DefineGrandStrategyHero("Durstorn", {
	Name = "Durstorn",
	DefaultType = "unit-hero-durstorn",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 35 + 15 -- died in 35 AD of a violent death, but was already somewhat old; +15 years
})

DefineGrandStrategyHero("Glonoin", {
	Name = "Glonoin",
	Gender = "male",
	DefaultType = "unit-dwarven-thane",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Shorbear Hills",
	Year = -1,
	DeathYear = 29 + 15 -- Shorbear Hold conquered in 29 AD by Rugnur's and Durstorn's Clan
})

DefineGrandStrategyHero("Rugnur", {
	Name = "Rugnur",
	DefaultType = "unit-hero-rugnur",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = 25,
	DeathYear = 40 + 30 -- died in 40 AD of a violent death, and wasn't old; +30 years
})
