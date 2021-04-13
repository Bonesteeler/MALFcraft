import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.tconstruct.Drying;
import mods.roots.Mortar;
import mods.roots.Fey;
import crafttweaker.item.IItemDefinition;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockState;
import mods.botania.PureDaisy;
import mods.botania.ManaInfusion;
import mods.botania.Apothecary;
import mods.botania.Lexicon;
import mods.botania.RuneAltar;
import mods.astralsorcery.Altar;
import mods.astralsorcery.StarlightInfusion;
import mods.astralsorcery.Utils;
import mods.astralsorcery.LightTransmutation;
import mods.astralsorcery.Lightwell;
import mods.astralsorcery.Grindstone;
import mods.naturesaura.Altar as NatureAltar;
import mods.naturesaura.TreeRitual;

// Removes EU2 tech items and some griefing items
recipes.removeShaped(<botania:laputashard>);
recipes.removeShaped(<botania:terrapick>);
recipes.remove(<extrautils2:biomemarker>);
recipes.remove(<extrautils2:machine>);
recipes.remove(<extrautils2:terraformer>);
recipes.remove(<extrautils2:terraformer:1>);
recipes.remove(<extrautils2:quarry>);
recipes.remove(<extrautils2:quarryproxy>);
recipes.remove(<extrautils2:scanner>);
recipes.remove(<extrautils2:rainbowgenerator>);
recipes.remove(<extrautils2:rainbowgenerator:1>);
recipes.remove(<extrautils2:rainbowgenerator:2>);
recipes.remove(<extrautils2:opinium>);
recipes.remove(<extrautils2:terraformer:9>);

recipes.removeByMod("ancientwarfare");

// Removes Unbalanced Recipes for Leather and Griefing Items from T-construct
mods.tconstruct.Drying.removeRecipe(<minecraft:leather>);
mods.tconstruct.Drying.removeRecipe(<tconstruct:edible>);
recipes.remove(<tconstruct:throwball>);
recipes.remove(<tconstruct:throwball:1>);
recipes.remove(<extrautils2:opinium:8>);

// Twilight Forest Entry Item Recipe Changed
val portal_core = <extrautils2:opinium:8>;
recipes.addShaped("NewCore",portal_core, [[<arcanearchives:raw_quartz_cluster>,<thaumcraft:salis_mundus>,<totemic:eagle_drops>],
[<naturesaura:effect_powder>,<waystones:warp_stone>,<astralsorcery:itemusabledust>],[<botania:manaresource:8>,<roots:infernal_bulb>,<tconstruct:nuggets:2>]]);

// Roots Recipe Changes
val growthInfusionItem = <roots:spell_dust>.withTag({spell_holder: {spell_0:"spell_growth_infusion", selectedSlot: 0, lastCooldown:0, cooldown: 0}});
val rampentGrowthItem = <roots:spell_dust>.withTag({spell_holder: {spell_0:"spell_rampant_growth", selectedSlot: 0, lastCooldown:0, cooldown: 0}});
Mortar.removeRecipe(growthInfusionItem);
Mortar.removeRecipe(rampentGrowthItem);

// Nature's Aura requires some Totemic Progress
recipes.remove(<naturesaura:wood_stand>);
val wood_stand = <naturesaura:wood_stand>;
recipes.addShaped("Stand", wood_stand, [[<naturesaura:gold_leaf>],[<totemic:cedar_log>]]);

// Intro to Nature's Aura Changed
recipes.remove(<naturesaura:gold_fiber>);
val gfiber = <naturesaura:gold_fiber>;
recipes.addShaped("GoldFiber", gfiber, [
[<minecraft:gold_nugget>,<minecraft:vine>,<minecraft:gold_nugget>],
[<ore:treeLeaves>,<botania:flower>,<ore:treeLeaves>],
[<minecraft:vine>,<minecraft:gold_nugget>,<minecraft:vine>]]);

// Changes Livingstone to require Roots Runestone
val Runestone = <roots:runestone>;
val livingrock = <botania:livingrock>;
PureDaisy.removeRecipe(livingrock);
PureDaisy.addRecipe(Runestone, livingrock);

// Adds Tooltip
val infusedWood = <astralsorcery:blockinfusedwood>;
infusedWood.addTooltip(format.gold("Obtained by dropping Wood Logs in Liquid Starlight in-world"));

// Changes Manasteel Recipe To Require Steel
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.removeRecipe(<botania:storage>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <immersiveengineering:metal:8>, 3000);
mods.botania.ManaInfusion.addInfusion(<botania:storage>, <immersiveengineering:storage:8>, 27000);

// Radiant Resonator
recipes.remove(<arcanearchives:radiant_resonator>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("Malfcraft:shaped/internal/altar/radiant", <arcanearchives:radiant_resonator>, 200, 200, [
<thaumcraft:ingot:2>, <betternether:cincinnasite_bars>, <thaumcraft:ingot:2>,
<astralsorcery:blockinfusedwood>, <botania:lens>, <astralsorcery:blockinfusedwood>,
<astralsorcery:blockinfusedwood>, <forge:bucketfilled>.withTag({FluidName:"purifying_fluid", Amount:1000}), <astralsorcery:blockinfusedwood>]);

// Runic Altar Recipe
recipes.remove(<botania:runealtar>);
TreeRitual.addRecipe("runic_altar", <totemic:cedar_sapling>, <botania:runealtar>, 200, [
livingrock, <totemic:buffalo_items:1>, <botania:manaresource:2>, null, <thaumcraft:salis_mundus>, livingrock, <roots:spell_dust>.withTag({spell_holder: {spell_0:"spell_radiance", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}), null]);

/*
// Infused Stone Recipe
NatureAltar.removeRecipe(infusedStone);
NatureAltar.addRecipe("infused_stone", livingrock, infusedStone, null, 7500, 40);
*/

// Remove Endo-flame and Hydrangeas
mods.botania.Apothecary.removeRecipe("endoflame");
mods.botania.Apothecary.removeRecipe("hydroangeas");

// Petro-petunia replace Endoflame
val PetroPetunia = <botania:specialflower>.withTag({type: "petro_petunia"});
mods.botania.Apothecary.removeRecipe(PetroPetunia);
mods.botania.Apothecary.addRecipe("PetroPetunia", [<ore:petalRed>, <ore:petalWhite>, <ore:petalLime>, <ore:petalBrown>]);