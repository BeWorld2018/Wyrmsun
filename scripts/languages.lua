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
--      (c) Copyright 2015-2016 by Andrettin
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

LanguageCacheOutdated = false
if (CanAccessFile("cache/languages.lua")) then
	local language_cache_date = GetFileLastModified("cache/languages.lua")
	
	local fileslist = ListFilesInDirectory("scripts/")
	for i,f in ipairs(fileslist) do
		local file_name = "scripts/" .. f
		if ((string.find(file_name, "language") ~= nil or string.find(file_name, "province") ~= nil or string.find(file_name, "tiles") ~= nil or string.find(file_name, "character") ~= nil or string.find(file_name, "unique_item") ~= nil or string.find(file_name, "works") ~= nil) and GetFileLastModified(file_name) > language_cache_date) then
			LanguageCacheOutdated = true
			break
		end
	end
	
	if (LanguageCacheOutdated == false) then
		local dirs = ListDirsInDirectory("scripts/civilizations/")
		for i,f in ipairs(dirs) do
			local directory = f .. "/"
			local fileslist = ListFilesInDirectory(directory)
			for second_i,second_f in ipairs(fileslist) do
				local file_name = "scripts/" .. directory .. second_f
				if ((string.find(file_name, "character") ~= nil or string.find(file_name, "unique_item") ~= nil or string.find(file_name, "works") ~= nil) and GetFileLastModified(file_name) > language_cache_date) then
					LanguageCacheOutdated = true
					break
				end
			end
		end
	end
else
	LanguageCacheOutdated = true
end

if not (LanguageCacheOutdated) then
	Load("cache/languages.lua")
	return;
end

DefineLanguage("albanian", {
	Name = "Albanian"
})

DefineLanguage("armenian", {
	Name = "Armenian"
})

DefineLanguage("armorican", {
	Name = "Armorican"
})

DefineLanguage("avestan", {
	Name = "Avestan",
	SkipNameTypeInheritance = true
})

DefineLanguage("basque", {
	Name = "Basque"
})

DefineLanguage("british", {
	Name = "British"
})

DefineLanguage("burgundian", {
	Name = "Burgundian"
})

DefineLanguage("catalan", {
	Name = "Catalan"
})

DefineLanguage("cornish", {
	Name = "Cornish"
})

DefineLanguage("crimean-gothic", {
	Name = "Crimean Gothic"
})

DefineLanguage("czech", {
	Name = "Czech"
})

DefineLanguage("danish", {
	Name = "Danish"
})

DefineLanguage("dutch", {
	Name = "Dutch"
})

DefineLanguage("dwarven", {
	Name = "Dwarven"
})

DefineLanguage("english", {
	Name = "English",
	NounEndings = {
		"singular", "genitive", "no-word-junction", "'s",
		"singular", "genitive", "compound", "s",
		"plural", "nominative", "s",
		"plural", "accusative", "s",
		"plural", "dative", "s",
		"plural", "genitive", "no-word-junction", "s'",
		"plural", "genitive", "compound", "s"
	},
	NameTranslations = {
		-- Old English to English
		"Abban", "Abing", -- Abbandun -> Abingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Abbandun", "Abingdon", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Abbodes", "Abbots", -- Abbodesbyrig -> Abbotsbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Abbodesbyrig", "Abbotsbury", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Ægeles", "Ayles", -- Ægelesburg -> Aylesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Ægeles", "Ayles", -- Ægelesford -> Aylesford; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Ægelesburg", "Aylesbury", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Ægelesford", "Aylesford", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Æthelingaig", "Athelney", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Alre", "Aller", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Ambres", "Ames", -- Ambresbyrig -> Amesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Ambresbyrig", "Amesbury", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Andeferas", "Andover", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Apuldre", "Appledore", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Arwe", "Orwell", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Assan", "Ashing", -- Assandun -> Ashingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Assandun", "Ashingdon", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Badecanwiellon", "Bakewell", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bænesing", "Bensing", -- Bænesingtun -> Bensington; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bænesingtun", "Bensington", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bancornaburg", "Bangor", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bardan", "Barn", -- Bardanstapol -> Barnstaple; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bardanstapol", "Barnstaple", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Basengum", "Basing", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bathum", "Bath", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Beam", "Ben", -- Beamfleot -> Benfleet; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Beamfleot", "Benfleet", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Burg", "Bury", -- Ægelesburg -> Aylesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Byrig", "Bury", -- Abbodesbyrig -> Abbotsbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Byrig", "Bury", -- Ambresbyrig -> Amesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Dun", "Don", -- Abbandun -> Abingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Dun", "Don", -- Assandun -> Ashingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Fleot", "Fleet", -- Beamfleot -> Benfleet; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Stapol", "Staple", -- Bardanstapol -> Barnstaple; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Tun", "Ton", -- Bænesingtun -> Bensington; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		-- German to English
		"Bernhard", "Bernard",
		"Franz", "Francis",
		"Friedrich", "Frederick",
		"Hannover", "Hanover",
		"Heinrich", "Henry",
		"Hessen", "Hesse",
		"Johann", "John",
		"Karl", "Charles",
		"Ludwig", "Lewis",
		"Peter", "Peter",
		"Thuringen", "Thuringia",
		"Westphalien", "Westphalia",
		"Wien", "Vienna",
		"Wilhelm", "William",
		"Württemberg", "Wurtemberg",
		-- Portuguese to English
		"Lisboa", "Lisbon"
	}
})

DefineLanguage("etruscan", {
	Name = "Etruscan"
})

DefineLanguage("finnish", {
	Name = "Finnish",
	SkipNameTypeInheritance = true
})

DefineLanguage("french", {
	Name = "French"
})

DefineLanguage("gallo-romance", {
	Name = "Gallo-Romance"
})

DefineLanguage("gaulish", {
	Name = "Gaulish"
})

DefineLanguage("gnomish", {
	Name = "Gnomish"
})

DefineLanguage("goblin", {
	Name = "Goblin"
})

DefineLanguage("gothic", {
	Name = "Gothic"
})

DefineLanguage("greek", {
	Name = "Greek",
	SkipNameTypeInheritance = true
})

DefineLanguage("high-german", { -- define High German early to prevent some type name generation weirdnesses
	Name = "High German",
	AdjectiveEndings = {
		"no-article", "nominative", "singular", "masculine", "er",
		"no-article", "nominative", "singular", "feminine", "e",
		"no-article", "nominative", "singular", "neuter", "es",
		"no-article", "nominative", "plural", "no-gender", "e",
		"no-article", "accusative", "singular", "masculine", "en",
		"no-article", "accusative", "singular", "feminine", "e",
		"no-article", "accusative", "singular", "neuter", "es",
		"no-article", "accusative", "plural", "no-gender", "e",
		"no-article", "dative", "singular", "masculine", "em",
		"no-article", "dative", "singular", "feminine", "er",
		"no-article", "dative", "singular", "neuter", "em",
		"no-article", "dative", "plural", "no-gender", "en",
		"no-article", "genitive", "singular", "masculine", "en",
		"no-article", "genitive", "singular", "feminine", "er",
		"no-article", "genitive", "singular", "neuter", "en",
		"no-article", "genitive", "plural", "no-gender", "er",
		"definite", "nominative", "singular", "masculine", "e",
		"definite", "nominative", "singular", "feminine", "e",
		"definite", "nominative", "singular", "neuter", "e",
		"definite", "nominative", "plural", "no-gender", "en",
		"definite", "accusative", "singular", "masculine", "en",
		"definite", "accusative", "singular", "feminine", "e",
		"definite", "accusative", "singular", "neuter", "e",
		"definite", "accusative", "plural", "no-gender", "en",
		"definite", "dative", "no-number", "no-gender", "en",
		"definite", "genitive", "no-number", "no-gender", "en",
		"indefinite", "nominative", "singular", "masculine", "er",
		"indefinite", "nominative", "singular", "feminine", "e",
		"indefinite", "nominative", "singular", "neuter", "es",
		"indefinite", "nominative", "plural", "no-gender", "en",
		"indefinite", "accusative", "singular", "masculine", "en",
		"indefinite", "accusative", "singular", "feminine", "e",
		"indefinite", "accusative", "singular", "neuter", "es",
		"indefinite", "accusative", "plural", "no-gender", "en",
		"indefinite", "dative", "no-number", "no-gender", "en",
		"indefinite", "genitive", "no-number", "no-gender", "en"
	},
	NameTranslations = {
		"Bûra", "Bauer", -- from Proto-Germanic to German
		"Dverga", "Zwerg", -- from Proto-Germanic to German
		"Gastiz", "Gast", -- from Proto-Germanic to German
		"Lanum", "Land", -- example: "Mediolanum" -> "Mailand" (Milan)
		"Medio", "Mai", -- example: "Mediolanum" -> "Mailand" (Milan)
		"Smiþu", "Schmied", -- from Proto-Germanic to German
		"Vindobona", "Wien", -- "Wien" = "Vienna"; from the Latin name "Vindobona"
		"Walakuzjōn", "Walküre", -- from Proto-Germanic to German
		"Airmanareiks", "Ermenrich", -- "Ermenrich" is the German form of the Gothic name Airmanareiks
		"Theodoric", "Dietrich" -- "Dietrich" is the German form of the Gothic name Theodoric
	}
})

DefineLanguage("illyrian", {
	Name = "Illyrian"
})

DefineLanguage("irish", {
	Name = "Irish"
})

DefineLanguage("italian", {
	Name = "Italian"
})

DefineLanguage("japanese", {
	Name = "Japanese"
})

DefineLanguage("kobold", {
	Name = "Kobold"
})

DefineLanguage("late-latin", {
	Name = "Late Latin"
})

DefineLanguage("latin", {
	Name = "Latin",
	SkipNameTypeInheritance = true,
	NameTranslations = {
		"Nea", "Nea", -- example: "Neapolis" -> "Neapolis" (Naples); name remained with no change
		"Polis", "Polis" -- example: "Neapolis" -> "Neapolis" (Naples); name remained with no change
	}
})

DefineLanguage("latvian", {
	Name = "Latvian"
})

DefineLanguage("liegeois", { -- should be a dialect instead of its own language
	Name = "Liègeois"
})

DefineLanguage("lithuanian", {
	Name = "Lithuanian"
})

DefineLanguage("medieval-latin", {
	Name = "Medieval Latin"
})

DefineLanguage("middle-dutch", {
	Name = "Middle Dutch"
})

DefineLanguage("middle-english", {
	Name = "Middle English"
})

DefineLanguage("middle-high-german", {
	Name = "Middle High German",
	NameTranslations = {
		"Airmanareiks", "Ermenrîch" -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18
	}
})

DefineLanguage("middle-low-german", {
	Name = "Middle Low German"
})

DefineLanguage("minoan", {
	Name = "Minoan"
})

DefineLanguage("northwest-germanic", {
	Name = "Northwest Germanic"
})

DefineLanguage("norwegian", {
	Name = "Norwegian"
})

DefineLanguage("old-bulgarian", {
	Name = "Old Bulgarian"
})

DefineLanguage("old-church-slavonic", {
	Name = "Old Church Slavonic"
})

DefineLanguage("old-english", {
	Name = "Old English",
	NameTranslations = {
		"Airmanareiks", "Eormenrîc" -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18
	}
})

DefineLanguage("old-flemish", { -- should be a dialect instead?
	Name = "Old Flemish"
})

DefineLanguage("old-frankish", {
	Name = "Old Frankish"
})

DefineLanguage("old-french", {
	Name = "Old French"
})

DefineLanguage("old-frisian", {
	Name = "Old Frisian"
})

DefineLanguage("old-gaulish", {
	Name = "Old Gaulish"
})

DefineLanguage("old-high-german", {
	Name = "Old High German"
})

DefineLanguage("old-irish", {
	Name = "Old Irish"
})

DefineLanguage("old-latin", {
	Name = "Old Latin"
})

DefineLanguage("old-norse", {
	Name = "Old Norse",
	NameTranslations = {
		"Airmanareiks", "Jǫrmunrekr" -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18
	}
})

DefineLanguage("old-danish", {
	Name = "Old Danish",
	DialectOf = "old-norse"
})

DefineLanguage("old-icelandic", {
	Name = "Old Icelandic",
	DialectOf = "old-norse"
})

DefineLanguage("old-provencal", {
	Name = "Old Provençal"
})

DefineLanguage("old-prussian", {
	Name = "Old Prussian"
})

DefineLanguage("old-saxon", {
	Name = "Old Saxon"
})

DefineLanguage("old-swedish", {
	Name = "Old Swedish",
	DialectOf = "old-norse"
})

DefineLanguage("old-welsh", {
	Name = "Old Welsh"
})

DefineLanguage("oscan", {
	Name = "Oscan"
})

DefineLanguage("phrygian", {
	Name = "Phrygian",
	SkipNameTypeInheritance = true
})

DefineLanguage("portuguese", {
	Name = "Portuguese"
})

DefineLanguage("proto-celtic", {
	Name = "Proto-Celtic",
	SkipNameTypeInheritance = true
})

DefineLanguage("proto-germanic", {
	Name = "Proto-Germanic"
})

DefineLanguage("proto-indo-european", {
	Name = "Proto-Indo-European"
})

DefineLanguage("proto-slavic", {
	Name = "Proto-Slavic",
	SkipNameTypeInheritance = true
})

DefineLanguage("proto-uralic", {
	Name = "Proto-Uralic",
	SkipNameTypeInheritance = true
})

DefineLanguage("provencal", {
	Name = "Provençal"
})

DefineLanguage("russian", {
	Name = "Russian",
	SkipNameTypeInheritance = true
})

DefineLanguage("sanskrit", {
	Name = "Sanskrit"
})

DefineLanguage("spanish", {
	Name = "Spanish"
})

DefineLanguage("swedish", {
	Name = "Swedish"
})

DefineLanguage("thracian", {
	Name = "Thracian",
	SkipNameTypeInheritance = true
})

DefineLanguage("ukrainian", {
	Name = "Ukrainian"
})

DefineLanguage("umbrian", {
	Name = "Umbrian"
})

DefineLanguage("welsh", {
	Name = "Welsh"
})

DefineLanguage("west-germanic", {
	Name = "West Germanic"
})

-- Indo-European languages
Load("scripts/language_proto_indo_european.lua")
Load("scripts/language_armenian.lua")
Load("scripts/language_avestan.lua")
Load("scripts/language_latvian.lua")
Load("scripts/language_lithuanian.lua")
Load("scripts/language_greek.lua")
Load("scripts/language_old_prussian.lua")
Load("scripts/language_oscan.lua")
Load("scripts/language_sanskrit.lua")
Load("scripts/language_umbrian.lua")

-- Celtic languages (branch of the Indo-European family)
Load("scripts/language_old_gaulish.lua")
Load("scripts/language_gaulish.lua")
Load("scripts/language_armorican.lua")
Load("scripts/language_british.lua")
Load("scripts/language_old_welsh.lua")
Load("scripts/language_welsh.lua")
Load("scripts/language_cornish.lua")
Load("scripts/language_old_irish.lua")

-- Latin (placed here because there are loanwords from it in Germanic languages)
Load("scripts/language_old_latin.lua")
Load("scripts/language_latin.lua")


-- Germanic languages (branch of the Indo-European family)
Load("scripts/language_proto_germanic.lua")
Load("scripts/language_northwest_germanic.lua")

-- North Germanic languages (branch of the Germanic family)
Load("scripts/language_old_norse.lua")
Load("scripts/language_old_danish.lua")
Load("scripts/language_old_swedish.lua")
Load("scripts/language_old_icelandic.lua")
Load("scripts/language_danish.lua")
Load("scripts/language_norwegian.lua")
Load("scripts/language_swedish.lua")

-- Irish (has to be placed here because it has words from Old Norse)
Load("scripts/language_irish.lua")

-- West Germanic languages (branch of the Germanic family)
Load("scripts/language_west_germanic.lua")
Load("scripts/language_old_high_german.lua")
Load("scripts/language_middle_high_german.lua")
Load("scripts/language_old_saxon.lua")
Load("scripts/language_middle_low_german.lua")
Load("scripts/language_high_german.lua")
Load("scripts/language_old_frankish.lua")
Load("scripts/language_middle_dutch.lua")
Load("scripts/language_old_flemish.lua")
Load("scripts/language_dutch.lua")
Load("scripts/language_old_frisian.lua")
Load("scripts/language_old_english.lua")
Load("scripts/language_middle_english.lua")

-- East Germanic languages (branch of the Germanic family)
Load("scripts/language_gothic.lua")
Load("scripts/language_crimean_gothic.lua")
Load("scripts/language_burgundian.lua")

-- Latin languages (branch of the Indo-European family)
Load("scripts/language_late_latin.lua")
Load("scripts/language_medieval_latin.lua")
Load("scripts/language_gallo_romance.lua")
Load("scripts/language_old_french.lua")
Load("scripts/language_old_provencal.lua")
Load("scripts/language_french.lua")
Load("scripts/language_liegeois.lua")
Load("scripts/language_provencal.lua")
Load("scripts/language_italian.lua")
Load("scripts/language_portuguese.lua")
Load("scripts/language_catalan.lua")
Load("scripts/language_spanish.lua")

-- English
Load("scripts/language_english.lua") -- put it here since it uses words of Old French origin

-- Slavic languages (branch of the Indo-European family)
Load("scripts/language_old_church_slavonic.lua")
Load("scripts/language_old_bulgarian.lua")
Load("scripts/language_russian.lua")
Load("scripts/language_ukrainian.lua")
Load("scripts/language_czech.lua")

-- Non-Indo-European languages
Load("scripts/language_finnish.lua")
Load("scripts/language_japanese.lua")

-- fictional languages
Load("scripts/language_dwarven.lua")
Load("scripts/language_gnomish.lua")
Load("scripts/language_goblin.lua")
Load("scripts/language_kobold.lua")

-- North Slavic (did this really exist?)
--[[
DefineLanguageWord("Kosem", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "north-slavic",
	Type = "noun",
	Meanings = {"Bundle of Flax"}
})
--]]

