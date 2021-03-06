salvage_bandit_leader = Creature:new {
	objectName = "",
	customName = "Gerr Napton <Avatar Platform>",
	socialGroup = "townsperson",
	pvpFaction = "townsperson",
	faction = "townsperson",
	level = 300,
	chanceHit = 300,
	damageMin = 3245,
	damageMax = 6000,
	baseXp = 26845,
	baseHAM = 1645253,
	baseHAMmax = 1754500,
	armor = 3,
	resists = {95,95,55,55,55,65,85,75,55},
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
        optionsBitmask = 264, --for conversation
        diet = HERBIVORE,

	templates = {"object/mobile/som/must_salvage_bandit_01.iff"},
	scale = 1.2,		
        lootGroups = {},
        weapons = {},
        conversationTemplate = "avatar_welcome_template",
        attacks = {},
}

CreatureTemplates:addCreatureTemplate(salvage_bandit_leader, "salvage_bandit_leader")
