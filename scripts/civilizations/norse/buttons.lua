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
--      (c) Copyright 2017-2018 by Andrettin
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

-- Units ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0,
	Action = "train-unit", Value = "unit-norse-swordsman",
	Key = "w", Hint = "Train S~!wordsman", Popup = "popup-unit",
	ForUnit = {"unit-norse-barracks"}
})

-- Mercenaries ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0,
	Action = "train-unit", Value = "unit-norse-swordsman",
	Key = "w", Hint = "Hire S~!wordsman", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

-- Buildings -----------------------------------------------------

DefineButton( { Pos = 1, Level = 1,
	Action = "build", Value = "unit-norse-town-hall",
	Key = "h", Hint = "Build Chieftain's ~!Hall", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 2, Level = 1,
	Action = "build", Value = "unit-norse-farm",
	Key = "f", Hint = "Build ~!Farm", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 3, Level = 1,
	Action = "build", Value = "unit-norse-barracks",
	Key = "w", Hint = "Build ~!War Lodge", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 4, Level = 1,
	Action = "build", Value = "unit-norse-lumber-mill",
	Key = "l", Hint = "Build ~!Lumber Mill", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 5, Level = 1,
	Action = "build", Value = "unit-norse-smithy",
	Key = "s", Hint = "Build ~!Smithy", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})
  
DefineButton( { Pos = 1, Level = 4, Icon = "icon-norse-wooden-wall",
	Action = "build", Value = "unit-norse-palisade",
	Key = "p", Hint = "Build ~!Palisade", Popup = "popup-building",
	ForUnit = {
		"unit-teuton-worker",
		"unit-germanic-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker"
	}
})

-- Deities ----------------------------------------------------------

DefineButton( { Pos = 6, Level = 0, Icon = "icon-odin",
	Action = "research", Value = "upgrade-deity-odin",
	Allowed = "check-upgrade", AllowArg = {"upgrade-norse-civilization"},
	Key = "o", Hint = "Worship ~!Odin", Popup = "popup-research",
	Description = "Choose Odin as your major deity. +2 Damage for Archers, enables Far Sight spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Christianity religion or with the Thor major deity.",
	ForUnit = {"unit-teuton-temple"}
})

DefineButton( { Pos = 7, Level = 0, Icon = "icon-thor",
	Action = "research", Value = "upgrade-deity-thor",
	Allowed = "check-upgrade", AllowArg = {"upgrade-norse-civilization"},
	Key = "t", Hint = "Worship ~!Thor", Popup = "popup-research",
	Description = "Choose Thor as your major deity. +2 Damage for sword infantry, enables Shocking Grasp spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Christianity religion or with the Odin major deity.",
	ForUnit = {"unit-teuton-temple"}
})

DefineButton( { Pos = 10, Level = 2, Icon = "icon-odin",
	Action = "learn-ability", Value = "upgrade-deity-odin",
	Key = "o", Hint = "Worship ~!Odin", Popup = "popup-learn-ability",
	Description = "Choose Odin as your hero's major deity. +2 Damage for Archers, enables Far Sight spell for Gudjans. Incompatible with the Christianity religion or with the Thor major deity.",
	ForUnit = {
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman"
	}
})

DefineButton( { Pos = 11, Level = 2, Icon = "icon-thor",
	Action = "learn-ability", Value = "upgrade-deity-thor",
	Key = "t", Hint = "Worship ~!Thor", Popup = "popup-learn-ability",
	Description = "Choose Thor as your hero's major deity. +2 Damage for sword infantry, enables Shocking Grasp spell for Gudjans. Incompatible with the Christianity religion or with the Odin major deity.",
	ForUnit = {
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman"
	}
})

DefineButton( { Pos = 12, Level = 2, Icon = "icon-tyr",
	Action = "learn-ability", Value = "upgrade-deity-tyr",
	Key = "y", Hint = "Worship T~!yr", Popup = "popup-learn-ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Tyr as a minor deity for your hero. +2 Damage for sword infantry and enables Inspire spell for Gudjans. Incompatible with the Heimdall and Hel minor deities.",
	ForUnit = {
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman",
		"unit-gothic-horse-rider", "unit-gothic-horse-lord"
	}
})

DefineButton( { Pos = 13, Level = 2, Icon = "icon-heimdall",
	Action = "learn-ability", Value = "upgrade-deity-heimdall",
	Key = "d", Hint = "Worship Heim~!dall", Popup = "popup-learn-ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Heimdall as a minor deity for your hero. +1 Sight for Archers, enables Precision spell for Gudjans. Incompatible with the Hel and Tyr minor deities.",
	ForUnit = {
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman"
	}
})

DefineButton( { Pos = 14, Level = 2, Icon = "icon-hel",
	Action = "learn-ability", Value = "upgrade-deity-hel",
	Key = "h", Hint = "Worship ~!Hel", Popup = "popup-learn-ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Hel as a minor deity for your hero. +20 Mana and enables Wither spell for Gudjans. Incompatible with the Heimdall and Tyr minor deities.",
	ForUnit = {
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman"
	}
})

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 2,
	Action = "experience-upgrade-to", Value = "unit-norse-veteran-swordsman",
	Key = "w", Hint = "Upgrade to Veteran S~!wordsman", Popup = "popup-unit",
	ForUnit = {"unit-norse-swordsman"}
})

DefineButton( { Pos = 1, Level = 2,
	Action = "experience-upgrade-to", Value = "unit-norse-heroic-swordsman",
	Key = "h", Hint = "Upgrade to ~!Hersir", Popup = "popup-unit",
	ForUnit = {"unit-norse-veteran-swordsman"}
})
