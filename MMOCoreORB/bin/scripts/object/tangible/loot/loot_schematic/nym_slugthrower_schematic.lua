object_tangible_loot_loot_schematic_carbine_nym_slugthrower_schematic = object_tangible_loot_loot_schematic_shared_carbine_nym_slugthrower_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master",
	targetDraftSchematic = "object/draft_schematic/weapon/",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_carbine_nym_slugthrower_schematic, "object/tangible/loot/loot_schematic/carbine_nym_slugthrower_schematic.iff")