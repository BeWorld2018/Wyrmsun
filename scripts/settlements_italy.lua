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
--      (c) Copyright 2017 by Andrettin
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

DefineSettlement("aquileia", {
	Name = "Aquileia",
	MapTemplate = "earth",
	Position = {4143, 1005},
	CulturalNames = {
		"latin", "Aquileia" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 26-27, 29.
	},
	HistoricalOwners = {
		-184, "rome" -- Aquileia founded as a colony in 184 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalBuildings = {
		-184, 1815, "town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("bologna", {
	Name = "Bologna",
	MapTemplate = "earth",
	Position = {4096, 1034},
	CulturalNames = {
		"latin", "Bononia" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-189, "rome", -- Bononia founded as a colony in 189 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1494, "papal-states" -- Bologna was a Papal possession about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-189, 0, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("brindisi", {
	Name = "Brindisi",
	MapTemplate = "earth",
	Position = {4245, 1123},
	CulturalNames = {
		"latin", "Brundisium" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-161, "rome", -- Brundisium was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1494, "sicily" -- Brindisi was a possession of the Kingdom of the Two Sicilies about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-161, 0, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("cremona", {
	Name = "Cremona",
	MapTemplate = "earth",
	Position = {4066, 1025},
	CulturalNames = {
		"latin", "Cremona", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		"teuton", "Cremona"
	},
	HistoricalOwners = {
		-218, "rome", -- Cremona founded as a colony in 218 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1494, "milan", -- Cremona was a possession of the Duchy of Milan about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1815, "austria", -- Cremona was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		1859, "sardinia" -- Cremona became a possession of Sardinia in 1859; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-218, 0, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("florence", {
	Name = "Florence",
	MapTemplate = "earth",
	Position = {4095, 1054},
	CulturalNames = {
		"latin", "Florentia" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-161, "rome", -- Florentia was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1494, "florence" -- Florence was a possession of the Republic of Florence about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-161, 1494, "farm",
		1494, 0, "town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("milan", {
	Name = "Milan",
	MapTemplate = "earth",
	Position = {4049, 1013},
	CulturalNames = {
		"latin", "Mediolanum", -- Source: "Ancient Warfare VII.6", 2013, p. 7.
		"teuton", "Milan"
	},
	HistoricalOwners = {
		-161, "rome", -- Mediolanum was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1494, "milan", -- Milan was a possession of the Duchy of Milan about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1815, "austria", -- Milan was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		1859, "sardinia" -- Milan became a possession of Sardinia in 1859; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-161, 1494, "farm",
		1494, 0, "town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("modena", {
	Name = "Modena",
	MapTemplate = "earth",
	Position = {4089, 1032},
	CulturalNames = {
		"latin", "Mutina" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-183, "rome", -- Mutina founded as a colony in 183 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1494, "modena"
	},
	HistoricalBuildings = {
		-218, 1494, "farm",
		1494, 0, "town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("naples", {
	Name = "Naples",
	MapTemplate = "earth",
	Position = {4163, 1117},
	CulturalNames = {
		"latin", "Neapolis" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-161, "rome", -- Neapolis was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1494, "sicily" -- Naples was a possession of the Kingdom of the Two Sicilies about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-161, 1494, "farm",
		1494, 0, "town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("oderzo", {
	Name = "Oderzo",
	MapTemplate = "earth",
	Position = {4122, 1005},
	CulturalNames = {
		"latin", "Opitergium" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 26-27; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		161, "rome" -- Opitergium was in existence in the 161-180 AD period, and under Roman ownership; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalBuildings = {
		161, 1815, "town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("paestum", {
	Name = "Paestum",
	MapTemplate = "earth",
	Position = {4181, 1127},
	CulturalNames = {
		"latin", "Paestum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-273, "rome" -- Paestum founded as a colony in 273 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalBuildings = {
		-273, 1494, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("piacenza", {
	Name = "Piacenza",
	MapTemplate = "earth",
	Position = {4056, 1028},
	CulturalNames = {
		"latin", "Placentia" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-218, "rome", -- Placentia founded as a colony in 218 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1494, "milan", -- Placentia was a possession of the Duchy of Milan about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1815, "parma", -- Placentia was a possession of the Duchy of Parma in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		1860, "sardinia" -- Placentia became a possession of Sardinia in 1860; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-218, 0, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("ravenna", {
	Name = "Ravenna",
	MapTemplate = "earth",
	Position = {4114, 1035},
	CulturalNames = {
		"latin", "Ravenna" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-161, "rome", -- Ravenna was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		526, "ostrogothia", -- Ravenna was a part of the Kingdom of the Ostrogoths in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1494, "papal-states" -- Ravenna was a Papal possession about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-161, 526, "farm",
		526, 1494, "town-hall",
		1494, 0, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("rome", {
	Name = "Rome",
	MapTemplate = "earth",
	Position = {4126, 1096},
	CulturalNames = {
		"latin", "Rome"
	},
	HistoricalOwners = {
		-750, "latin-tribe", -- Latins present in Latium by 750-625 BC, and Rome was in existence as well; Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-500, "rome", -- Rome had been founded and was independent by 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		526, "ostrogothia", -- Rome was a part of the Kingdom of the Ostrogoths in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1494, "papal-states" -- Rome was a Papal possession about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-750, 0, "town-hall",
		-40, 0, "temple", -- Temple of Jupiter Capitolinus, Temple of Jupiter Victor, Temple of Vesta, Temple of Fortunus and Temple of Aesculapius existed in Rome in c. 40 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 22-23.
		-40, 0, "dock" -- Shipyards ("Navalia") existed in Rome in c. 40 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 22-23.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("venice", {
	Name = "Venice",
	MapTemplate = "earth",
	Position = {4122, 1011},
	CulturalNames = {
		"teuton", "Venice"
	},
	HistoricalOwners = {
		1494, "venice", -- Venice was part of the Venetian Republic about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1815, "austria" -- Venice was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1494, 0, "town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("verona", {
	Name = "Verona",
	MapTemplate = "earth",
	Position = {4090, 1014},
	CulturalNames = {
		"latin", "Verona", -- Source: "Ancient Warfare VII.6", 2013, p. 7.
		"teuton", "Verona"
	},
	HistoricalOwners = {
		161, "rome", -- Verona was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1494, "venice", -- Verona was a possession of the Venetian Republic about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1815, "austria" -- Verona was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		161, 1815, "farm",
		1815, 0, "guard-tower" -- Verona had a fortress in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})
