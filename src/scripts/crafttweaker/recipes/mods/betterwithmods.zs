/*
    SevTech: Ages Better With Mods Recipe Script

    This script handles the recipes for Better With Mods.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.betterwithmods.MiniBlocks;
import mods.zenstages.Utils;

import scripts.crafttweaker.craftingUtils;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<betterwithmods:material:0> : [
		[
			[<totemic:buffalo_items:1>, <totemic:cedar_plank:0>, <totemic:buffalo_items:1>],
			[<totemic:cedar_plank:0>, null, <totemic:cedar_plank:0>],
			[<totemic:buffalo_items:1>, <totemic:cedar_plank:0>, <totemic:buffalo_items:1>]
		]
	],
	<betterwithmods:wicker:0> : [
		[
			[<minecraft:reeds:0>, <minecraft:reeds:0>],
			[<minecraft:reeds:0>, <minecraft:reeds:0>]
		]
	],
	<betterwithmods:shaft:0> : [
		[
			[<ore:stickWood>.firstItem, <primal:plant_cordage:0>],
			[<ore:stickWood>.firstItem, <primal:plant_cordage:0>],
			[<ore:stickWood>.firstItem, <primal:plant_cordage:0>]
		]
	],
	<betterwithmods:axle_generator:1> : [
		[
			[<betterwithmods:material:10>, <betterwithmods:material:10>, <betterwithmods:material:10>],
			[<betterwithmods:material:10>, metals.copper.gear, <betterwithmods:material:10>],
			[<betterwithmods:material:10>, <betterwithmods:material:10>, <betterwithmods:material:10>]
		]
	],
	<betterwithmods:material:10> : [
		[
			[<ore:slabWood>, null, null],
			[<ore:slabWood>, <ore:slimeball>, <ore:slabWood>],
			[<ore:slabWood>, null, null]
		]
	],
	<betterwithmods:material:24> : [
		[
			[metals.bronze.rod, metals.bronze.rod, null],
			[null, metals.bronze.rod, metals.bronze.rod],
			[metals.bronze.rod, metals.bronze.rod, null]
		],
		[
			[metals.copper.rod,
			metals.copper.rod, null],
			[null, metals.copper.rod, metals.copper.rod],
			[metals.copper.rod, metals.copper.rod, null]
		],
		[
			[metals.tin.rod, metals.tin.rod, null],
			[null, metals.tin.rod, metals.tin.rod],
			[metals.tin.rod, metals.tin.rod, null]
		]
	],
	<betterwithmods:rope:0> : [
		[
			[<betterwithmods:material:3>, <betterwithmods:material:3>],
			[<betterwithmods:material:3>, <betterwithmods:material:3>],
			[<betterwithmods:material:3>, <betterwithmods:material:3>]
		]
	],
	<betterwithmods:saw:0> : [
		[[null, <primal_tech:flint_edged_disc>, null], [metals.copper.gear, <betterwithmods:material:9>, metals.copper.gear], [<ore:plankWood>, metals.bronze.gear, <ore:plankWood>]]
	],
	<betterwithmods:single_machine:3> : [
		[[sidingWood, sidingWood, sidingWood], [<minecraft:stone:0>, metals.copper.gear, <minecraft:stone:0>], [<minecraft:stone:0>, <betterwithmods:wooden_axle:0>, <minecraft:stone:0>]]
	],
	<betterwithmods:wooden_axle:0> : [
		[[null, <ore:stickWood>.firstItem, null], [<betterwithmods:rope:0>, <actuallyadditions:item_misc:5>, <betterwithmods:rope:0>], [null, <ore:stickWood>.firstItem, null]]
	],
	<betterwithmods:wooden_gearbox:0> : [
		[
			[<ore:thinWood>, <betterwithmods:material:0>, <ore:thinWood>],
			[metals.bronze.plate, <betterwithmods:wooden_axle:0>, metals.bronze.plate],
			[<ore:thinWood>, <betterwithmods:material:0>, <ore:thinWood>]
		],
		[
			[null, <betterwithmods:material:0>, null],
			[null, <betterwithmods:wooden_broken_gearbox:0>, null],
			[null, <betterwithmods:material:0>, null]
		]
	],
	<betterwithmods:bellows:0> : [
		[
			[sidingWood, sidingWood, sidingWood],
			[<ore:hideTanned>, <ore:hideTanned>, <ore:hideTanned>],
			[<ore:hideBelt>, <ore:gearWood>, <ore:hideBelt>]
		]
	],
	<betterwithmods:breeding_harness:0> : [
		[
			[<ore:cordageLeather>, <minecraft:leather:0>, <ore:cordageLeather>],
			[<minecraft:leather:0>, <minecraft:leather:0>, <minecraft:leather:0>],
			[<ore:cordageLeather>, <minecraft:leather:0>, <ore:cordageLeather>]
		]
	],
	<betterwithmods:material:0> : [
		[
			[<ore:stickWood>.firstItem, <ore:plankWood>, <ore:stickWood>.firstItem],
			[<ore:plankWood>, <betterwithmods:material:12>, <ore:plankWood>],
			[<ore:stickWood>.firstItem, <ore:plankWood>, <ore:stickWood>.firstItem]
		]
	],
	<betterwithmods:aesthetic:12> : [
		[
			[<betterwithmods:wicker:0>, <betterwithmods:wicker:0>],
			[<betterwithmods:wicker:0>, <betterwithmods:wicker:0>]
		]
	],
	<betterwithmods:material:36> : [
		[
			[null, <ore:cordageLeather>, null],
			[null, <ore:slimeball>, null],
			[null, mouldingWood, null]
		]
	],
	<betterwithmods:ender_spectacles:0> : [
		[
			[null, null, null],
			[<betterwithmods:material:40>, <ore:cordageLeather>, <betterwithmods:material:40>],
			[null, null, null]
		]
	],
	<betterwithmods:anchor:0> : [
		[
			[null, metals.iron.plate, null],
			[<ore:stone>, <ore:stone>, <ore:stone>]
		]
	],
	<betterwithmods:material:34>: [
		[
			[<minecraft:lever:0>, null],
			[metals.gold.plate, null]
		]
	],
	<betterwithmods:single_machine:1>: [
		[
			[<ore:plankWood>, metals.iron.plate, <ore:plankWood>],
			[<ore:gearWood>, <betterwithmods:material:34>, <ore:gearWood>],
			[<ore:plankWood>, metals.iron.plate, <ore:plankWood>]
		]
	],
	<betterwithmods:material:8>: [
		[
			[null, null, <primal:leather_strip:0>],
			[null, <primal:leather_strip:0>, null],
			[<primal:leather_strip:0>, null, null]
		]
	],
	<betterwithmods:rope:0> : [
		[
			[<immersiveengineering:material:4>, <immersiveengineering:material:4>],
			[<immersiveengineering:material:4>, <immersiveengineering:material:4>],
			[<immersiveengineering:material:4>, <immersiveengineering:material:4>]
		]
	],
	<betterwithmods:material:9>: [
		[
			[null, <ore:cordageLeather>, null],
			[<ore:cordageLeather>, <ore:slimeball>, <ore:cordageLeather>],
			[null, <ore:cordageLeather>, null]
		]
	],
	<betterwithmods:single_machine:0>: [
		[
			[<minecraft:stone:0>, <minecraft:stone_slab:0>, <minecraft:stone:0>],
			[<minecraft:stone:0>, <horsepower:hand_grindstone:0>, <minecraft:stone:0>],
			[<minecraft:stone:0>, <minecraft:stone:0>, <minecraft:stone:0>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	// ==================================
	// Stage Two
	// ==================================
	<betterwithmods:wooden_axle:0> : {
		Utils.genRecipeName(stageTwo, <betterwithmods:wooden_axle:0>): [
			[
				[null, mouldingWood, null],
				[null, <betterwithmods:rope:0>, null],
				[null, mouldingWood, null]
			]
		]
	},
	<betterwithmods:wooden_gearbox:0> : {
		Utils.genRecipeName(stageTwo, <betterwithmods:wooden_gearbox:0>): [
			[
				[mouldingWood, <betterwithmods:material:0>, mouldingWood],
				[metals.bronze.plate, <betterwithmods:wooden_axle:0>, metals.bronze.plate],
				[mouldingWood, <betterwithmods:material:0>, mouldingWood]
			]
		]
	}
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<betterwithmods:manual:0> : [
		[<primal:plant_cloth:0>, <betterwithmods:material:0>]
	],
	<betterwithmods:rope:0> * 9: [
		[<betterwithmods:aesthetic:4>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<betterwithmods:aesthetic:8>,
	<betterwithmods:aesthetic:12>,
	<betterwithmods:axle_generator:1>,
	<betterwithmods:bellows:0>,
	<betterwithmods:cooking_pot:1>,
	<betterwithmods:manual:0>,
	<betterwithmods:material:10>,
	<betterwithmods:material:24>,
	<betterwithmods:material:36>,
	<betterwithmods:material:8>,
	<betterwithmods:material:9>,
	<betterwithmods:material:0>,
	<betterwithmods:rope:0>,
	<betterwithmods:saw:0>,
	<betterwithmods:shaft:0>,
	<betterwithmods:single_machine:3>,
	<betterwithmods:single_machine:0>,
	<betterwithmods:wicker:0>,
	<betterwithmods:wooden_axle:0>,
	<betterwithmods:wooden_gearbox:0>
];

static removeRegex as string[] = [
	"betterwithaddons:glass_bottle",
	"betterwithmods:higheff/item_frame",
	"betterwithmods:decompress/melon_decompress"
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.betterwithmods.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.betterwithmods.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.betterwithmods.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.betterwithmods.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.betterwithmods.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.betterwithmods.namedShapelessRecipes;

	var removeRegex as string[] = scripts.crafttweaker.recipes.mods.betterwithmods.removeRegex;
	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.betterwithmods.removeRecipes;

	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
	recipeUtil.removeRecipes(removeRegex);
}
