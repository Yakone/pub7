crimson_at_st = Creature:new {
	objectName = "@mob/creature_names:at_st",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 125,
	chanceHit = 475,
	damageMin = 1200,
	damageMax = 3500,
	baseXp = 11859,
	baseHAM = 75000,
	baseHAMmax = 76000,
	armor = 2,
	resists = {65,65,65,65,65,65,65,65,65},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = NONE,

	templates = {"object/mobile/atst.iff"},
	lootGroups = {},
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(crimson_at_st, "crimson_at_st")