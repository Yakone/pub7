rohak_village_elder_a = Creature:new {
	objectName = "@mob/creature_names:fs_villager_elder",
	socialGroup = "fs_villager",
	pvpFaction = "fs_villager",
	faction = "fs_villager",
	level = 12,
	chanceHit = 0.29,
	damageMin = 130,
	damageMax = 140,
	baseXp = 430,
	baseHAM = 1170,
	baseHAMmax = 1430,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = 264,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_fs_village_elder.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "force_sensitive_rohak_conv",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(rohak_village_elder_a, "rohak_village_elder_a")