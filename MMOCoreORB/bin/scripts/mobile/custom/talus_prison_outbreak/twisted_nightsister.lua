twisted_nightsister = Creature:new {
	objectName = "",
	customName = "Twisted Nightsister",
	socialGroup = "imperial",
	pvpFaction = "",
	faction = "",
	level = 35,
	chanceHit = 300,
	damageMin = 195,
	damageMax = 330,
	baseXp = 20000,
	baseHAM = 28000,
	baseHAMmax = 36000,
	armor = 2,
	resists = {40,70,20,60,60,60,30,30,45},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_guardian.iff",
                     "object/mobile/dressed_dathomir_nightsister_protector.iff",
                     "object/mobile/dressed_dathomir_nightsister_initiate.iff",
                     "object/mobile/dressed_dathomir_nightsister_spellweaver.iff",
                     "object/mobile/dressed_dathomir_nightsister_stalker.iff"
                     },
	lootGroups = {
		{
			groups = {
				{group = "crystals_poor", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "nightsister_common", chance = 2000000},
				{group = "armor_attachments", chance = 250000},
				{group = "clothing_attachments", chance = 250000},
				{group = "melee_weapons", chance = 2500000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "wearables_common", chance = 500000},
				{group = "wearables_uncommon", chance = 500000}
			},
			lootChance = 1500000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(twisted_nightsister, "twisted_nightsister")
