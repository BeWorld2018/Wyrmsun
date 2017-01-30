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
--      (c) Copyright 2014-2017 by Andrettin
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

------------------------------------------------------------------------------
--	Define", "unit-button.
--
--	DefineButton( { Pos = n, Level = n 'icon ident Action = name ['value value]
--		['allowed check ['values]] Key = key, Hint = hint 'for-unit", "units)
--

-- general commands -- almost all units have it -------------------------------

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-1",
	Action = "attack",
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-goblin-war-machine"
	}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-2",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-goblin-catapult-projectile-1"},
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-goblin-war-machine"
	}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-3",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-goblin-catapult-projectile-2"},
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-goblin-war-machine"
	}
} )

-- Buildings -----------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-goblin-town-hall",
	Action = "build", Value = "unit-goblin-town-hall",
	Key = "h", Hint = _("Build Town ~!Hall"), Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
} )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-goblin-farm",
	Action = "build", Value = "unit-goblin-farm",
	Key = "f", Hint = _("Build ~!Farm"), Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

DefineButton( { Pos = 3, Level = 1, Icon = "icon-goblin-mess-hall",
	Action = "build", Value = "unit-goblin-mess-hall",
	Key = "m", Hint = _("Build ~!Mess Hall"), Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

DefineButton( { Pos = 4, Level = 1, Icon = "icon-goblin-lumber-mill",
	Action = "build", Value = "unit-goblin-lumber-mill",
	Key = "l", Hint = _("Build ~!Lumber Mill"), Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

DefineButton( { Pos = 5, Level = 1, Icon = "icon-goblin-smithy",
	Action = "build", Value = "unit-goblin-smithy",
	Key = "o", Hint = _("Build Fugla F~!orge"), Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

DefineButton( { Pos = 7, Level = 1, Icon = "icon-goblin-temple",
	Action = "build", Value = "unit-goblin-temple",
	Key = "p", Hint = _("Build Tem~!ple"), Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

DefineButton( { Pos = 8, Level = 1, Icon = "icon-goblin-watch-tower",
	Action = "build", Value = "unit-goblin-watch-tower",
	Key = "t", Hint = _("Build Watch ~!Tower"), Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

DefineButton( { Pos = 9, Level = 1, Icon = "icon-goblin-dock",
	Action = "build", Value = "unit-goblin-dock",
	Key = "d", Hint = _("Build ~!Dock"), Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-goblin-broad-sword",
	Action = "research", Value = "upgrade-goblin-broad-sword",
	Allowed = "check-single-research",
	Key = "w", Hint = _("Research Broad S~!word"), Popup = "popup-research",
	Description = _("+2 Damage for Swordsmen, Barbarians and Warlords."),
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-goblin-long-sword",
	Action = "research", Value = "upgrade-goblin-long-sword",
	Allowed = "check-single-research",
	Key = "w", Hint = _("Research Long S~!word"), Popup = "popup-research",
	Description = _("+2 Damage for Swordsmen, Barbarians and Warlords."),
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-goblin-rimmed-shield",
	Action = "research", Value = "upgrade-goblin-rimmed-shield",
	Allowed = "check-single-research",
	Key = "s", Hint = _("Research Rimmed ~!Shield"), Popup = "popup-research",
	Description = _("+2 Armor for Swordsmen, Barbarians, Warlords, and Spearmen."),
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-goblin-embossed-shield",
	Action = "research", Value = "upgrade-goblin-embossed-shield",
	Allowed = "check-single-research",
	Key = "s", Hint = _("Research Embossed ~!Shield"), Popup = "popup-research",
	Description = _("+2 Armor for Swordsmen, Barbarians, Warlords, and Spearmen."),
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-2",
	Action = "research", Value = "upgrade-goblin-catapult-projectile-1",
	Allowed = "check-single-research",
	Key = "c", Hint = _("Research Granite ~!Catapult Projectile"), Popup = "popup-research",
	Description = "+15 Damage for War Machines.",
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-3",
	Action = "research", Value = "upgrade-goblin-catapult-projectile-2",
	Allowed = "check-single-research",
	Key = "c", Hint = _("Research Metal ~!Catapult Projectile"), Popup = "popup-research",
	Description = "+15 Damage for War Machines.",
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-long-spear",
	Action = "research", Value = "upgrade-goblin-long-spear",
	Allowed = "check-single-research",
	Key = "s", Hint = _("Research Long ~!Spear"), Popup = "popup-research",
	Description = _("+2 Damage for Impalers."),
	ForUnit = {"unit-goblin-lumber-mill"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-pike",
	Action = "research", Value = "upgrade-goblin-pike",
	Allowed = "check-single-research",
	Key = "k", Hint = _("Research Pi~!ke"), Popup = "popup-research",
	Description = _("+2 Damage for Impalers."),
	ForUnit = {"unit-goblin-lumber-mill"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-germanic-barbed-arrow",
	Action = "research", Value = "upgrade-goblin-barbed-arrow",
	Allowed = "check-single-research",
	Key = "a", Hint = _("Research Barbed ~!Arrow"), Popup = "popup-research",
	Description = "+2 Damage for Archers, Headhunters and Shadowstalkers.",
	ForUnit = {"unit-goblin-lumber-mill"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-bodkin-arrow",
	Action = "research", Value = "upgrade-goblin-bodkin-arrow",
	Allowed = "check-single-research",
	Key = "a", Hint = _("Research Bodkin ~!Arrow"), Popup = "popup-research",
	Description = "+2 Damage for Archers, Headhunters and Shadowstalkers.",
	ForUnit = {"unit-goblin-lumber-mill"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-wood-plow",
	Action = "research", Value = "upgrade-goblin-wood-plow",
	Allowed = "check-single-research",
	Description = _("+1 Food supply for Farms."),
	Key = "p", Hint = _("Research Wood ~!Plow"), Popup = "popup-research",
	ForUnit = {"unit-goblin-lumber-mill"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-iron-tipped-wood-plow",
	Action = "research", Value = "upgrade-goblin-iron-tipped-wood-plow",
	Allowed = "check-single-research",
	Description = _("+1 Food supply for Farms."),
	Key = "p", Hint = _("Research Iron-Tipped Wood ~!Plow"), Popup = "popup-research",
	ForUnit = {"unit-goblin-lumber-mill"}
} )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-masonry",
	Action = "research", Value = "upgrade-goblin-masonry",
	Allowed = "check-single-research",
	Key = "m", Hint = _("Research ~!Masonry"), Popup = "popup-research",
	Description = "+20% Hit Points and +5 Armor for buildings, allows Town Halls to be upgraded to Strongholds.",
	ForUnit = {"unit-goblin-lumber-mill"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-goblin-coinage",
	Action = "research", Value = "upgrade-goblin-coinage",
	Allowed = "check-single-research",
	Description = _("+10% Copper, Silver and Gold Processing."),
	Key = "c", Hint = _("Research ~!Coinage"), Popup = "popup-research",
	ForUnit = {"unit-goblin-stronghold"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-norse-runewriting",
	Action = "research", Value = "upgrade-goblin-writing",
	Allowed = "check-single-research",
	Description = _("+10% Time Efficiency for all buildings, changes faction from tribe to polity."),
	Key = "w", Hint = _("Research ~!Writing"), Popup = "popup-research",
	ForUnit = {"unit-goblin-stronghold"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-cauldron",
	Action = "research", Value = "upgrade-goblin-alchemy",
	Allowed = "check-single-research",
	Description = _("+1 Fire Damage for Archers and Headhunters, +5 Fire Damage for War Machines."),
	Key = "a", Hint = _("Research ~!Alchemy"), Popup = "popup-research",
	ForUnit = {"unit-goblin-stronghold"}
} )

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 2, Level = 0, Icon = "icon-goblin-stronghold",
	Action = "upgrade-to", Value = "unit-goblin-stronghold",
	Allowed = "check-upgrade-to",
	Key = "s", Hint = _("Upgrade to ~!Stronghold"), Popup = "popup-building",
	ForUnit = {"unit-goblin-town-hall"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-goblin-guard-tower",
	Action = "upgrade-to", Value = "unit-goblin-guard-tower",
	Allowed = "check-upgrade-to",
	Key = "g", Hint = _("Upgrade to ~!Guard Tower"), Popup = "popup-building",
	ForUnit = {"unit-goblin-watch-tower"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-goblin-barbarian",
	Action = "experience-upgrade-to", Value = "unit-goblin-barbarian",
	Key = "u", Hint = _("~!Upgrade to Barbarian"), Popup = "popup-unit",
	ForUnit = {"unit-goblin-swordsman"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-goblin-warlord",
	Action = "experience-upgrade-to", Value = "unit-goblin-warlord",
	Key = "u", Hint = _("~!Upgrade to Warlord"), Popup = "popup-unit",
	ForUnit = {"unit-goblin-barbarian"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-goblin-headhunter",
	Action = "experience-upgrade-to", Value = "unit-goblin-headhunter",
	Key = "u", Hint = _("~!Upgrade to Headhunter"), Popup = "popup-unit",
	ForUnit = {"unit-goblin-archer"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-goblin-shadowstalker",
	Action = "experience-upgrade-to", Value = "unit-goblin-shadowstalker",
	Key = "u", Hint = _("~!Upgrade to Shadowstalker"), Popup = "popup-unit",
	ForUnit = {"unit-goblin-headhunter"}
} )

Load("scripts/civilizations/goblin/buttons_faction.lua")
