import crafttweaker.item.IItemStack;

var redundantItems = [
<rustic:tomato_seeds>,
<rustic:tomato>,
<rustic:chili_pepper_seeds>,
<rustic:chili_pepper>,
<rustic:grape_stem>,
<rustic:grapes>,
<rustic:apiary>,
<rustic:beehive>,
<rustic:bee>,
<rustic:honeycomb>
] as IItemStack[];

for item in redundantItems
{
	mods.jei.JEI.removeAndHide(item);
}