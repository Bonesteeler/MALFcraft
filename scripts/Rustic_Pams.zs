import crafttweaker.item.IItemStack;
import mods.rustic.CrushingTub;
import mods.rustic.Condenser;

CrushingTub.addRecipe(<liquid:oliveoil>*250, null, <harvestcraft:oliveitem>);
CrushingTub.addRecipe(<liquid:grapejuice>*250, null, <harvestcraft:grapeitem>);
CrushingTub.addRecipe(<liquid:honey>*250, null, <harvestcraft:honeycombitem>);

var berries = [
<harvestcraft:blackberryitem>,
<harvestcraft:blueberryitem>,
<harvestcraft:candleberryitem>,
<harvestcraft:raspberryitem>,
<harvestcraft:strawberryitem>,
<harvestcraft:cranberryitem>,
<harvestcraft:elderberryitem>,
<harvestcraft:huckleberryitem>,
<harvestcraft:mulberryitem>,
<harvestcraft:gooseberryitem>,
<harvestcraft:juniperberryitem>
] as IItemStack[];

for item in berries {
    CrushingTub.addRecipe(<liquid:wildberryjuice>*250, null, item);
}

<ore:wax>.add(<harvestcraft:beeswaxitem>);

recipes.removeByRecipeName("rusticthaumaturgy:brass_candle_tallow");
recipes.removeByRecipeName("rusticthaumaturgy:brass_candle_beeswax");

recipes.addShaped("candle_brass", <rusticthaumaturgy:candle_brass>,
	[[<minecraft:string>],
	 [<ore:wax>],
	 [<thaumcraft:ingot:2>]]);

Condenser.addRecipe(
	<rustic:elixir>.withTag({
	ElixirEffects: 
	[{	Effect: "minecraft:night_vision",
		Duration: 3600, Amplifier: 0		}]}),
	<harvestcraft:whitemushroomitem>, <minecraft:spider_eye>);
	
Condenser.addRecipe(
	<rustic:elixir>.withTag({
	ElixirEffects:
	[{	Effect: "minecraft:night_vision", 
		Duration: 9600, Amplifier: 0		}]}), 
	[<harvestcraft:whitemushroomitem>, <minecraft:spider_eye>], <rustic:horsetail>);

Condenser.addRecipe(
	<rustic:elixir>.withTag({
	ElixirEffects: 
	[{	Effect: "minecraft:regeneration", 
		Duration: 900, Amplifier: 0			}]}), 
	<rustic:cohosh>, <harvestcraft:honeycombitem>);
	
Condenser.addRecipe(
	<rustic:elixir>.withTag({
	ElixirEffects:
	[{	Effect: "minecraft:regeneration", 
		Duration: 1800, Amplifier: 0		}]}),
	[<rustic:cohosh>, <harvestcraft:honeycombitem>], <rustic:horsetail>);
	
Condenser.addRecipe(
	<rustic:elixir>.withTag({
	ElixirEffects: 
	[{	Effect: "minecraft:regeneration",
		Duration: 450, Amplifier: 1			}]}),
	[<rustic:cohosh>, <harvestcraft:honeycombitem>], <rustic:marsh_mallow>);

Condenser.addRecipe(
	<rustic:elixir>.withTag({
	ElixirEffects: 
	[{	Effect: "rustic:blazing_trail",
		Duration: 3600, Amplifier: 0		}]}), 
	[<harvestcraft:chilipepperitem>, <minecraft:blaze_powder>, <minecraft:netherrack>]);
	
Condenser.addRecipe(
	<rustic:elixir>.withTag({
	ElixirEffects: 
	[{	Effect: "rustic:blazing_trail",
		Duration: 9600, Amplifier: 0		}]}), 
	[<harvestcraft:chilipepperitem>, <minecraft:blaze_powder>, <minecraft:netherrack>], <rustic:horsetail>);