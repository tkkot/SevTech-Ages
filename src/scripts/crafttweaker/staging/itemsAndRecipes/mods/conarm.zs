import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<conarm:armorforge:0>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 0 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 3 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "mekanism:basicblock", Count: 1 as byte, Damage: 1 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "mekanism:basicblock", Count: 1 as byte, Damage: 13 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "minecraft:gold_block", Count: 1 as byte, Damage: 0 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "minecraft:iron_block", Count: 1 as byte, Damage: 0 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "twilightforest:block_storage", Count: 1 as byte, Damage: 1 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "twilightforest:block_storage", Count: 1 as byte, Damage: 2 as short}}),
		<conarm:armorstation:0>,
		<conarm:book:0>,
		<conarm:gauntlet_mat_speed:0>,
		<conarm:gauntlet_mat:0>,
		<conarm:travel_cloak:0>,
		<conarm:travel_goggles_base:0>,
		<conarm:travel_goggles:0>,
		<conarm:travel_slowfall:0>
	],

	stageThree.stage: [
		<conarm:armorforge:0>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 1 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 2 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 4 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 6 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 7 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 8 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 3 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 5 as short}}),
		<conarm:gauntlet_mat_attack:0>,
		<conarm:gauntlet_mat_reach:0>,
		<conarm:resist_mat_blast:0>,
		<conarm:resist_mat_fire:0>,
		<conarm:resist_mat_proj:0>,
		<conarm:resist_mat:0>,
		<conarm:travel_night:0>,
		<conarm:travel_sneak:0>,
		<conarm:travel_soul:0>
	],

	stageFour.stage: [
		<conarm:armorforge:0>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 0 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 1 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 2 as short}}),
		<conarm:armorforge:0>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 4 as short}})
	],

	stageFive.stage: [
		<conarm:armorforge:0>.withTag({textureBlock: {id: "extraplanets:neptune", Count: 1 as byte, Damage: 7 as short}})
	]
};

static hiddenRemove as IIngredient[] = [
	<conarm:armorforge:0>.withTag({textureBlock: {id: "primal:metalblock", Count: 1 as byte, Damage: 12 as short}}),
	<conarm:travel_belt:0>,
	<conarm:travel_belt_base:0>,
	<conarm:travel_potion:0>,
	<conarm:travel_sack:0>
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.conarm.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	recipeUtil.hideItems(scripts.crafttweaker.staging.itemsAndRecipes.mods.conarm.hiddenRemove as IIngredient[], true);
}
