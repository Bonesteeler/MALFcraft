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
import mods.naturesaura.TreeRitual;
import mods.roots.RunicShears;

// Roots Recipe Changes
val growthInfusionItem = <roots:spell_dust>.withTag({spell_holder: {spell_0:"spell_growth_infusion", selectedSlot: 0, lastCooldown:0, cooldown: 0}});
val rampentGrowthItem = <roots:spell_dust>.withTag({spell_holder: {spell_0:"spell_rampant_growth", selectedSlot: 0, lastCooldown:0, cooldown: 0}});
Mortar.removeRecipe(growthInfusionItem);
Mortar.removeRecipe(rampentGrowthItem);

// Fey Leather Shearing
RunicShears.addEntityRecipe("leather_from_buffalo", <roots:fey_leather>*2, <entity:totemic:buffalo>, 120*20);

// Ender Pearl Tier 2
Fey.addRecipe("EnderPearl", <minecraft:ender_eye>, [<forbidden_arcanus:ender_pearl_fragment>, <quark:biotite>, <roots:infernal_bulb>, <forbidden_arcanus:ender_pearl_fragment>, <arcanearchives:quartz_sliver>]);