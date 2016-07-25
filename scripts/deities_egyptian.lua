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
--      (c) Copyright 2016 by Andrettin
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

DefineDeity("ra", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 41.
	Name = "Ra",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"fire"},
	Major = true,
--	Description = "Ra is a mighty sun god."
})

DefineDeity("amon", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 44.
	Name = "Amon",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"aether"},
--	Description = "\"The hidden\", Amon is a god associated with invisible powers."
})

DefineDeity("bes", { -- Source: Warren R. Dawson, "Pygmies and Dwarfs in Ancient Egypt", 1938, p. 186; Source: Kamyar Abdi, "Bes in the Achaemenid Empire", 1999, p. 114.
	Name = "Bes",
	Civilizations = {"dwarf", "egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"life"},
--	Description = "The god Bes has a dwarf-like appearance. The deity wards childbirths, bestows luck and prosperity on families and protects against malignant beings. Having taken an interest in the dwarves of Nidavellir, Bes sought to made contact with them and establish a priesthood in the world, and became specially popular among the inhabitants of Joruvellir. On Earth he is worshiped by Egyptians."
})

DefineDeity("geb", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 30.
	Name = "Geb",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"earth"},
--	Description = "Geb is a god of earth and fate."
})

DefineDeity("hathor", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, pp. 13, 29.
	Name = "Hathor",
	Civilizations = {"egyptian", "minotaur"},
	Religions = {"paganism"},
	Gender = "female",
	Domains = {"air"},
--	Description = "Hathor is a celestial goddess. She appears in the form of a cow, and is held as a goddess of happiness. On Earth Hathor is worshiped by the Egyptians, and she also enjoys a priesthood amongst the minotaurs of Jotunheim."
})

DefineDeity("heka", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 44.
	Name = "Heka",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"aether"},
--	Description = "Heka is a deity of magic."
})

DefineDeity("horus", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, pp. 41, 55.
	Name = "Horus",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {},
--	Description = "Horus is a god who takes the shape of a falcon. His mother is Isis."
})

DefineDeity("hu", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 44.
	Name = "Hu",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {},
--	Description = "Hu is a deity of the word."
})

DefineDeity("isis", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 55.
	Name = "Isis",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "female",
	Domains = {},
--	Description = "Isis is the mother of Horus."
})

DefineDeity("khonsu", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 44.
	Name = "Khonsu",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {},
--	Description = "\"The one who comes and goes\", Khonsu is a moon god."
})

DefineDeity("mafdet", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 44.
	Name = "Mafdet",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "female",
	Domains = {},
--	Description = "\"The runner\", Mafdet is a goddess who takes the shape of a panther."
})

DefineDeity("min", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 40.
	Name = "Min",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"lightning"},
--	Description = "Min is a god of lightning."
})

DefineDeity("neith", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 40.
	Name = "Neith",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "female",
	Domains = {"archery"},
--	Description = "Neith is a goddess famed for her arrows."
})

DefineDeity("nekhbet", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 42.
	Name = "Nekhbet",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {},
--	Description = "Nekhbet takes the form of a vulture, and is associated with the arid deserts."
})

DefineDeity("nut", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, pp. 47, 50.
	Name = "Nut",
	Civilizations = {"egyptian", "minotaur"},
	Religions = {"paganism"},
	Gender = "female",
	Domains = {"air"},
--	Description = "Nut is a sky goddess who takes the shape of a cow."
})

DefineDeity("osiris", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 51.
	Name = "Osiris",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"death"},
--	Description = "Osiris is a god who rules over the underworld plane of Imduat."
})

DefineDeity("pakhet", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 44.
	Name = "Pakhet",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "female",
	Domains = {},
--	Description = "\"The dilacerator\", Pakhet is a goddess who takes the form of a lioness."
})

DefineDeity("shu", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 48.
	Name = "Shu",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"air"},
--	Description = "Shu is a deity associated with the connection between earth and sky."
})

DefineDeity("sia", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 44.
	Name = "Sia",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {},
--	Description = "Sia is a deity of thought."
})

DefineDeity("sobek", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 25.
	Name = "Sobek",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"water"},
--	Description = "A god who takes the shape of a crocodile, Sobek holds aquatic animals as his domain. He is also linked to vegetation growth."
})

DefineDeity("thot", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 55.
	Name = "Thot",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {},
--	Description = "Thot is a god of writing and knowledge."
})

DefineDeity("uadjit", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 42.
	Name = "Uadjit",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "female",
	Domains = {},
--	Description = "A serpent-shaped goddess, Uadjit is associated with swamps and fertile valleys."
})

DefineDeity("upuaut", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 44.
	Name = "Upuaut",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {},
--	Description = "\"The opener of paths\", Upuaut is a god who takes the form of a jackal."
})

