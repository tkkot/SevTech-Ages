import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<valkyrielib:guide:0>
	]
};

static hiddenRemove as IIngredient[] = [
	<valkyrielib:modifier_component:0>,
	<valkyrielib:modifier_speed:0>
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.valkyrielib.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	recipeUtil.hideItems(scripts.crafttweaker.staging.itemsAndRecipes.mods.valkyrielib.hiddenRemove as IIngredient[], true);
}
