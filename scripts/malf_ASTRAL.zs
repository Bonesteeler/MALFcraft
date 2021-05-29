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

// Remove Eye of Ender Recipe
recipes.remove(<minecraft:ender_eye>);
mods.astralsorcery.StarlightInfusion.removeInfusion(<minecraft:ender_eye>);

// Radiant Resonator
recipes.remove(<arcanearchives:radiant_resonator>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("Malfcraft:shaped/internal/altar/radiant", <arcanearchives:radiant_resonator>, 200, 200, [
<thaumcraft:ingot:2>, <betternether:cincinnasite_bars>, <thaumcraft:ingot:2>,
<astralsorcery:blockinfusedwood>, <botania:lens>, <astralsorcery:blockinfusedwood>,
<astralsorcery:blockinfusedwood>, <forge:bucketfilled>.withTag({FluidName:"purifying_fluid", Amount:1000}), <astralsorcery:blockinfusedwood>]);

// Glass Lens
val GlassLens = (<astralsorcery:itemcraftingcomponent:3>);
recipes.remove(GlassLens);
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/glasslens");
mods.astralsorcery.StarlightInfusion.removeInfusion(GlassLens);
mods.botania.ManaInfusion.addInfusion(GlassLens, <stevescarts:modulecomponents:5>, 500);
mods.astralsorcery.StarlightInfusion.addInfusion(<stevescarts:modulecomponents:5>, GlassLens, false, 0.3, 200);

// Starlight Infuser Change
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/starlightinfuser");
val StarlightInfuser = (<astralsorcery:blockstarlightinfuser>);
val Marble = (<astralsorcery:blockmarble>);
val MarbleBrick = (<astralsorcery:blockmarble:1>);
val Nitor = (<ore:nitor>);
val Spark = (<botania:spark>);
val BuckStar = (<forge:bucketfilled>.withTag({FluidName:"astralsorcery.liquidstarlight", Amount:1000}));
val Gold = (<forbidden_arcanus:arcane_gold_ingot>);
val Aquamarine = (<astralsorcery:itemcraftingcomponent>);
val MoonHerb = (<roots:moonglow_leaf>);
mods.astralsorcery.Altar.addConstellationAltarRecipe("Malfcraft:shaped/internal/altar/starlightinfuser", StarlightInfuser, 1500, 10, [

			Spark, MoonHerb, Spark,

			Gold, BuckStar, Gold,

			MarbleBrick, Nitor, MarbleBrick,

			null, null, Marble, Marble,

			null, null,

			Aquamarine, Aquamarine,

			Marble, Marble,

			Marble, Marble]);