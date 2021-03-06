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
--      (c) Copyright 2001-2018 by Lutz Sammer, Jimmy Salmon and Andrettin
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

DefineUpgrade("upgrade-melee-weapon-1", {
	Name = "Melee Weapon 1",
	Class = "melee-weapon-1",
	Weapon = true
})

DefineUpgrade("upgrade-broad-sword", {
	Name = "Broad Sword",
	Parent = "upgrade-melee-weapon-1",
	Costs = {"time", 200, "copper", 800}
})

DefineUpgrade("upgrade-broad-axe", {
	Name = "Broad Axe",
	Parent = "upgrade-melee-weapon-1",
	Costs = {"time", 200, "copper", 500, "lumber", 300}
})

DefineUpgrade("upgrade-melee-weapon-2", {
	Name = "Melee Weapon 2",
	Class = "melee-weapon-2",
	Weapon = true
})

DefineUpgrade("upgrade-long-sword", {
	Name = "Long Sword",
	Parent = "upgrade-melee-weapon-2",
	Costs = {"time", 250, "copper", 2400},
	RequirementsString = "Broad Sword and Ironworking"
})

DefineUpgrade("upgrade-great-axe", {
	Name = "Great Axe",
	Parent = "upgrade-melee-weapon-2",
	Costs = {"time", 250, "copper", 1500, "lumber", 900}
})

DefineUpgrade("upgrade-long-spear", {
	Name = "Long Spear",
	Class = "long-spear",
	Description = "With the lengthening of spear shafts, soldiers who wield these weapons have greater reach against their enemies.",
	Icon = "icon-long-spear",
	Weapon = true,
	Costs = {"time", 200, "copper", 400, "lumber", 400}
})

DefineUpgrade("upgrade-pike", {
	Name = "Pike",
	Class = "pike",
	Description = "Much longer than previous spears, pikes can be deadly when used by disciplined groups of soldiers.",
	Icon = "icon-pike",
	Weapon = true,
	Costs = {"time", 250, "copper", 1200, "lumber", 1200},
	RequirementsString = "Long Spear and Ironworking"
})

DefineUpgrade("upgrade-bronze-shield", {
	Name = "Bronze Shield",
	Class = "bronze-shield",
	Shield = true,
	Costs = {"time", 200, "copper", 300, "lumber", 900}
})

DefineUpgrade("upgrade-iron-shield", {
	Name = "Iron Shield",
	Class = "iron-shield",
	Shield = true,
	Costs = {"time", 250, "copper", 900, "lumber", 1500}
})

DefineUpgrade("upgrade-ranged-projectile-1", {
	Name = "Ranged Projectile 1",
	Class = "ranged-projectile-1",
	Costs = {"time", 200, "copper", 300, "lumber", 900}
})

DefineUpgrade("upgrade-ranged-projectile-2", {
	Name = "Ranged Projectile 2",
	Class = "ranged-projectile-2",
	Costs = {"time", 250, "copper", 900, "lumber", 1500}
})

DefineUpgrade("upgrade-siege-projectile-1", {
	Name = "Siege Projectile 1",
	Class = "siege-projectile-1"
})

DefineUpgrade("upgrade-catapult-granite-projectile", {
	Name = "Catapult Granite Projectile",
	Parent = "upgrade-siege-projectile-1",
	Icon = "icon-catapult-projectile-2",
	Costs = {"time", 250, "copper", 1000, "stone", 500},
	RequirementsString = "Lumber Mill"
})

DefineUpgrade("upgrade-broadhead-ballista-bolt", {
	Name = "Broadhead Ballista Bolt",
	Parent = "upgrade-siege-projectile-1",
	Costs = {"time", 250, "copper", 1000, "lumber", 500},
	RequirementsString = "Lumber Mill"
})

DefineUpgrade("upgrade-siege-projectile-2", {
	Name = "Siege Projectile 2",
	Class = "siege-projectile-2"
})

DefineUpgrade("upgrade-catapult-metal-projectile", {
	Name = "Catapult Metal Projectile",
	Parent = "upgrade-siege-projectile-2",
	Icon = "icon-catapult-projectile-3",
	Costs = {"time", 250, "copper", 4000},
	RequirementsString = "Lumber Mill, Catapult Granite Projectile and Ironworking"
})

DefineUpgrade("upgrade-penetrating-ballista-bolt", {
	Name = "Penetrating Ballista Bolt",
	Parent = "upgrade-siege-projectile-2",
	Costs = {"time", 250, "copper", 3000, "lumber", 1000},
	RequirementsString = "Lumber Mill, Broadhead Ballista Bolt and Ironworking"
})

DefineUpgrade("upgrade-wood-plow", {
	Name = "Wood Plow",
	Class = "wood-plow",
	Civilization = "neutral",
	Icon = "icon-wood-plow",
	Description = "While at the dawn of agriculture seeds were simply spread over the soil, the invention of the plow allows farmers to more easily make furrows where seeds would be planted. This made way for the cultivation of heavier soils, and planting over larger areas became a more practical possibility.\n\nEffect: +1 Food supply for farms.",
	Costs = {"time", 200, "copper", 300, "lumber", 900}
})

DefineUpgrade("upgrade-iron-tipped-wood-plow", {
	Name = "Iron-Tipped Wood Plow",
	Class = "iron-tipped-wood-plow",
	Civilization = "neutral",
	Icon = "icon-iron-tipped-wood-plow",
	Description = "The use of plowshares made of iron greatly increases the plow's strength, allowing it to penetrate more deeply into the soil.\n\nEffect: +1 Food supply for farms.",
	Costs = {"time", 250, "copper", 900, "lumber", 1500},
	RequirementsString = "Wood Plow, Ironworking and Smithy"
})

DefineUpgrade("upgrade-iron-plow", {
	Name = "Iron Plow",
	Class = "iron-plow",
	Civilization = "neutral",
	Icon = "icon-iron-plow",
	Description = "The use of plows made entirely of iron makes for a significant improvement in farming productivity.\n\nEffect: +1 Food supply for farms.",
	Costs = {"time", 250, "copper", 900, "lumber", 1500},
	RequirementsString = "Iron-Tipped Wood Plow and Smithy"
})

DefineUpgrade("upgrade-ironworking", {
	Name = "Ironworking",
	Class = "ironworking",
	Civilization = "neutral",
	Icon = "icon-anvil",
	Description = "The development of ironworking has the potential to revolutionize a society, as it allows metal objects to be more commonly used, given the relative abundance of iron.\n\nEffect: Allows Iron Mines and Mithril Mines, +10% Iron and Mithril Processing Bonus for Smithies.",
	Costs = {"time", 250, "copper", 2000}
})

DefineUpgrade("upgrade-masonry", {
	Name = "Masonry",
	Class = "masonry",
	Icon = "icon-masonry",
	Description = "Masonry is the craft of building structures from blocks, which are bound together with mortar.",
	Costs = {"time", 250, "copper", 900, "lumber", 1000, "stone", 500}
})

DefineUpgrade("upgrade-coinage", {
	Name = "Coinage",
	Class = "coinage",
	Description = "While previously trade was conducted by trading one commodity for another, the introduction of currency provides a more practical means of exchange.\n\nEffect: +10% Copper, Silver and Gold Processing Bonus for Smithies, -5% Trade Cost for Markets.",
	Costs = {"time", 250, "copper", 1500},
	RequirementsString = "Smithy"
})

DefineUpgrade("upgrade-writing", {
	Name = "Writing",
	Class = "writing",
	Description = "The invention of writing makes it possible for ideas and traditions to be more easily spread and preserved.\n\nEffect: +10% Research Speed for buildings. Allows Scrolls and Books to be sold at the Market.",
	Costs = {"time", 250, "copper", 900, "lumber", 1500},
	GrandStrategyProductionEfficiencyModifier = {"research", 50, "leadership", 25}
})

DefineUpgrade("upgrade-alchemy", {
	Name = "Alchemy",
	Class = "alchemy",
	Icon = "icon-cauldron",
	Description = "Once writing had been developed, observations on the basic substances that form the world could be noted down and more easily passed on. This led to the appearance of the discipline of alchemy, mixing esoteric, scientific and philosophical postulations about the elements from which the material world is composed.",
	RequirementsString = "Philosophy, Mathematics and Ironworking",
	Costs = {"time", 250, "copper", 4000}
})

DefineUpgrade("upgrade-printing-press", {
	Name = "Printing Press",
	Class = "printing-press",
	Civilization = "neutral",
	Description = "The invention of the printing press allowed knowledge to be more quickly and efficiently spread.",
	Icon = "icon-printing-press",
	Costs = {"time", 250, "copper", 2000, "lumber", 2000},
	GrandStrategyProductionEfficiencyModifier = {"research", 25}
})

DefineUpgrade("upgrade-mathematics", {
	Name = "Mathematics",
	Class = "mathematics",
	Civilization = "neutral",
	Icon = "icon-mathematics",
	Description = "The understanding of even a basic level of mathematics has significant benefits for a civilization, particularly in matters such as keeping account of trade.",
	RequirementsString = "Writing",
	Costs = {"time", 250, "copper", 2000}
})

DefineUpgrade("upgrade-engineering", {
	Name = "Engineering",
	Class = "engineering",
	Civilization = "neutral",
	Icon = "icon-engineering",
	Description = "The development of engineering allows the creation of more complex mechanisms.\n\nEffect: Allows siege engines, railroads and minecarts.",
	RequirementsString = "Mathematics, Masonry and Ironworking",
	Costs = {"time", 250, "copper", 2000, "lumber", 2000}
})

DefineUpgrade("upgrade-architecture", {
	Name = "Architecture",
	Class = "architecture",
	Civilization = "neutral",
	Icon = "icon-architecture",
	Description = "The development of architecture as an area of knowledge results in better construction techniques.\n\nEffect: +20% Hit Points, +5 Armor and -25% Salvage Factor for buildings.",
	RequirementsString = "Writing and Masonry",
	Costs = {"time", 250, "copper", 2000, "lumber", 2000}
})

DefineUpgrade("upgrade-philosophy", {
	Name = "Philosophy",
	Class = "philosophy",
	Civilization = "neutral",
	Icon = "icon-philosophy",
	Description = "The new modes of thinking fostered by the development of philosophy result in the improvement of the rate of technical and cultural advancement.\n\nEffect: +25% Research Speed for buildings.",
	RequirementsString = "Writing",
	Costs = {"time", 250, "copper", 2000}
})

DefineUpgrade("upgrade-gunpowder", {
	Name = "Gunpowder",
	Class = "gunpowder",
	Civilization = "neutral",
	Icon = "icon-gunpowder",
	Description = "The explosive material known as gunpowder has a varied number of potential applications. Early gunpowder weapons, such as the hand cannon, can have a significant impact on the battlefield. Further developments could even possess the potential to revolutionize warfare as a whole...\n\nEffect: Allows gunpowder infantry.",
	RequirementsString = "Alchemy",
	Costs = {"time", 250, "copper", 4000}
})

DefineUpgrade("upgrade-steam-engine", {
	Name = "Steam Engine",
	Class = "steam-engine",
--	Description = "The invention of the printing press allowed knowledge to be more quickly and more efficiently spread.",
	Icon = "icon-printing-press",
	Costs = {"time", 250, "copper", 2000, "lumber", 2000}
})

DefineModifier("upgrade-ironworking",
	{"improve-production", "iron", 10},
	{"improve-production", "mithril", 10},
	{"apply-to", "unit-dwarven-smithy"}, {"apply-to", "unit-brising-smithy"},
	{"apply-to", "unit-goblin-smithy"},
	{"apply-to", "unit-germanic-smithy"},
	{"apply-to", "unit-latin-smithy"},
	{"apply-to", "unit-norse-smithy"},
	{"apply-to", "unit-teuton-smithy"}
)

DefineModifier("upgrade-wood-plow",
	{"Supply", 1},
	{"apply-to", "unit-dwarven-mushroom-farm"},
	{"apply-to", "unit-germanic-farm"}, {"apply-to", "unit-latin-farm"}, {"apply-to", "unit-norse-farm"}, {"apply-to", "unit-teuton-farm"},
	{"apply-to", "unit-goblin-farm"}
)

DefineModifier("upgrade-iron-tipped-wood-plow",
	{"Supply", 1},
	{"apply-to", "unit-dwarven-mushroom-farm"},
	{"apply-to", "unit-germanic-farm"}, {"apply-to", "unit-latin-farm"}, {"apply-to", "unit-norse-farm"}, {"apply-to", "unit-teuton-farm"},
	{"apply-to", "unit-goblin-farm"}
)

DefineModifier("upgrade-iron-plow",
	{"Supply", 1},
	{"apply-to", "unit-dwarven-mushroom-farm"},
	{"apply-to", "unit-germanic-farm"}, {"apply-to", "unit-latin-farm"}, {"apply-to", "unit-norse-farm"}, {"apply-to", "unit-teuton-farm"},
	{"apply-to", "unit-goblin-farm"}
)

DefineModifier("upgrade-mathematics",
	{"TradeCost", -5},
	{"apply-to", "unit-dwarven-market"},
	{"apply-to", "unit-germanic-market"},
	{"apply-to", "unit-goblin-market"},
	{"apply-to", "unit-teuton-market"}
)

DefineModifier("upgrade-engineering", -- dummy upgrade modifier to change the variation
	{"apply-to", "unit-gold-mine"}
)

DefineModifier("upgrade-architecture",
	{"HitPoints", 20, "Percent"},
	{"Armor", 5},
	{"SalvageFactor", -25},
	{"Points", 10},
	{"apply-to", "unit-dwarven-town-hall"}, {"apply-to", "unit-dwarven-stronghold"},
	{"apply-to", "unit-dwarven-mushroom-farm"}, {"apply-to", "unit-dwarven-barracks"},
	{"apply-to", "unit-dwarven-lumber-mill"}, {"apply-to", "unit-dwarven-smithy"}, {"apply-to", "unit-brising-smithy"},
	{"apply-to", "unit-dwarven-masons-shop"},
	{"apply-to", "unit-dwarven-yale-pen"}, {"apply-to", "unit-joruvellir-yale-pen"},
	{"apply-to", "unit-dwarven-temple"}, {"apply-to", "unit-dwarven-market"},
	{"apply-to", "unit-dwarven-academy"},
	{"apply-to", "unit-dwarven-sentry-tower"}, {"apply-to", "unit-dwarven-guard-tower"},
	{"apply-to", "unit-dwarven-dock"},
	{"apply-to", "unit-ettin-town-hall"},
	{"apply-to", "unit-goblin-town-hall"}, {"apply-to", "unit-goblin-stronghold"},
	{"apply-to", "unit-goblin-farm"}, {"apply-to", "unit-goblin-mess-hall"},
	{"apply-to", "unit-goblin-lumber-mill"}, {"apply-to", "unit-goblin-smithy"},
	{"apply-to", "unit-goblin-temple"}, {"apply-to", "unit-goblin-market"},
	{"apply-to", "unit-goblin-academy"},
	{"apply-to", "unit-goblin-watch-tower"}, {"apply-to", "unit-goblin-guard-tower"},
	{"apply-to", "unit-goblin-dock"},
	{"apply-to", "unit-latin-town-hall"},
	{"apply-to", "unit-latin-farm"}, {"apply-to", "unit-latin-barracks"},
	{"apply-to", "unit-latin-smithy"},
	{"apply-to", "unit-latin-stables"},
	{"apply-to", "unit-norse-town-hall"},
	{"apply-to", "unit-norse-farm"}, {"apply-to", "unit-norse-barracks"},
	{"apply-to", "unit-norse-lumber-mill"}, {"apply-to", "unit-norse-smithy"},
	{"apply-to", "unit-teuton-town-hall"}, {"apply-to", "unit-teuton-stronghold"},
	{"apply-to", "unit-teuton-farm"}, {"apply-to", "unit-teuton-barracks"},
	{"apply-to", "unit-teuton-lumber-mill"}, {"apply-to", "unit-teuton-smithy"},
	{"apply-to", "unit-teuton-stables"}, {"apply-to", "unit-teuton-temple"},
	{"apply-to", "unit-teuton-market"}, {"apply-to", "unit-teuton-university"},
	{"apply-to", "unit-teuton-watch-tower"}, {"apply-to", "unit-teuton-guard-tower"},
	{"apply-to", "unit-teuton-dock"}
)

DefineModifier("upgrade-philosophy",
	{"ResearchSpeedBonus", 25},
	{"apply-to", "unit-dwarven-town-hall"}, {"apply-to", "unit-dwarven-stronghold"},
	{"apply-to", "unit-dwarven-barracks"},
	{"apply-to", "unit-dwarven-lumber-mill"}, {"apply-to", "unit-dwarven-smithy"}, {"apply-to", "unit-brising-smithy"},
	{"apply-to", "unit-dwarven-masons-shop"},
--	{"apply-to", "unit-dwarven-yale-pen"}, {"apply-to", "unit-joruvellir-yale-pen"},
--	{"apply-to", "unit-dwarven-market"},
	{"apply-to", "unit-dwarven-temple"}, {"apply-to", "unit-dwarven-academy"},
--	{"apply-to", "unit-dwarven-dock"},
	{"apply-to", "unit-ettin-town-hall"},
	{"apply-to", "unit-goblin-town-hall"}, {"apply-to", "unit-goblin-stronghold"},
	{"apply-to", "unit-goblin-mess-hall"},
	{"apply-to", "unit-goblin-lumber-mill"}, {"apply-to", "unit-goblin-smithy"},
--	{"apply-to", "unit-goblin-market"},
	{"apply-to", "unit-goblin-temple"}, {"apply-to", "unit-goblin-academy"},
--	{"apply-to", "unit-goblin-dock"},
	{"apply-to", "unit-latin-town-hall"},
	{"apply-to", "unit-latin-barracks"},
	{"apply-to", "unit-latin-smithy"},
--	{"apply-to", "unit-latin-stables"},
	{"apply-to", "unit-norse-town-hall"},
	{"apply-to", "unit-norse-barracks"},
	{"apply-to", "unit-norse-lumber-mill"}, {"apply-to", "unit-norse-smithy"},
	{"apply-to", "unit-teuton-town-hall"}, {"apply-to", "unit-teuton-stronghold"},
	{"apply-to", "unit-teuton-barracks"},
	{"apply-to", "unit-teuton-lumber-mill"}, {"apply-to", "unit-teuton-smithy"},
--	{"apply-to", "unit-teuton-stables"},
--	{"apply-to", "unit-teuton-market"},
	{"apply-to", "unit-teuton-temple"}, {"apply-to", "unit-teuton-university"},
--	{"apply-to", "unit-teuton-dock"},
	{"apply-to", "unit-mercenary-camp"}
)

-- Load the faction type upgrades
Load("scripts/upgrade_faction_types.lua")

-- Load the deity upgrades
Load("scripts/upgrade_deities.lua")

-- Law upgrades
Load("scripts/upgrade_laws.lua")

-- Military doctrine upgrades
Load("scripts/upgrade_military_doctrines.lua")

-- Load the upgrades of the different civilizations
Load("scripts/civilizations/celt/upgrade.lua")
Load("scripts/civilizations/dwarf/upgrade.lua")
Load("scripts/civilizations/egyptian/upgrade.lua")
Load("scripts/civilizations/ettin/upgrade.lua")
Load("scripts/civilizations/germanic/upgrade.lua")
Load("scripts/civilizations/anglo_saxon/upgrade.lua")
Load("scripts/civilizations/english/upgrade.lua")
Load("scripts/civilizations/frankish/upgrade.lua")
Load("scripts/civilizations/gnome/upgrade.lua")
Load("scripts/civilizations/goblin/upgrade.lua")
Load("scripts/civilizations/goth/upgrade.lua")
Load("scripts/civilizations/greek/upgrade.lua")
Load("scripts/civilizations/kobold/upgrade.lua")
Load("scripts/civilizations/latin/upgrade.lua")
Load("scripts/civilizations/norse/upgrade.lua")
Load("scripts/civilizations/suebi/upgrade.lua")
Load("scripts/civilizations/teuton/upgrade.lua")

Load("scripts/upgrade_faction.lua")
Load("scripts/upgrade_dependencies.lua")

-- miscellaneous individual upgrades
local misc_individual_upgrades = {
	{"upgrade-child", "Child"},
	{"upgrade-bee-child", "Bee Child"},
	{"upgrade-gryphon-child", "Gryphon Child"},
	{"upgrade-wyrm-child", "Wyrm Child"}
}

for i = 1,table.getn(misc_individual_upgrades) do
	u = CUpgrade:New(misc_individual_upgrades[i][1])
	u.Name = misc_individual_upgrades[i][2]
	u.Icon = Icons["icon-level-up"]
	for j = 1,7 do
		u.Costs[j - 1] = 0
	end
	u.Ability = false
	DefineAllow(misc_individual_upgrades[i][1], "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
end

DefineModifier("upgrade-child",
	{"BasicDamage", -2}
)

DefineModifier("upgrade-bee-child",
	{"BasicDamage", -1}
)

DefineModifier("upgrade-gryphon-child",
	{"BasicDamage", -8}
)

DefineModifier("upgrade-wyrm-child",
	{"BasicDamage", -24}
)

Load("scripts/item_prefixes.lua")
Load("scripts/item_suffixes.lua")
Load("scripts/item_suffixes_runic.lua")
Load("scripts/item_sets.lua")
Load("scripts/province_modifiers.lua")
Load("scripts/traits.lua")
Load("scripts/elixirs.lua")
Load("scripts/works.lua")

DefineUpgrade("upgrade-character-deity", {
	Name = "Deity Character Upgrade",
	Icon = "icon-level-up"
})

DefineUpgrade("upgrade-kvasir-character", {
	Name = "Kvasir Character Upgrade",
	Icon = "icon-kvasir"
})

DefineModifier("upgrade-character-deity",
	{"FireResistance", 100},
	{"ColdResistance", 100},
	{"ArcaneResistance", 100},
	{"LightningResistance", 100},
	{"AirResistance", 100},
	{"EarthResistance", 100},
	{"WaterResistance", 100},
	{"HackResistance", 100},
	{"PierceResistance", 100},
	{"BluntResistance", 100},
	{"HitPoints", 1, "Increase"}
)

DefineModifier("upgrade-kvasir-character",
	{"FireResistance", 100},
	{"ColdResistance", 100},
	{"ArcaneResistance", 100},
	{"LightningResistance", 100},
	{"AirResistance", 100},
	{"EarthResistance", 100},
	{"WaterResistance", 100},
--	{"HackResistance", 100},
--	{"PierceResistance", 100},
	{"BluntResistance", 100},
	{"HitPoints", 1, "Increase"}
)
