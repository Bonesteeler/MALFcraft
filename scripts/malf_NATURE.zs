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

// Runic Altar Recipe
val livingrock = (<botania:livingrock>);
recipes.remove(<botania:runealtar>);
TreeRitual.addRecipe("runic_altar", <totemic:cedar_sapling>, <botania:runealtar>, 200, [
livingrock, <totemic:buffalo_items:1>, <botania:manaresource:2>, null, <thaumcraft:salis_mundus>, livingrock, <roots:spell_dust>.withTag({spell_holder: {spell_0:"spell_radiance", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}), null]);

// Offering Table
val OfferingTable = (<naturesaura:offering_table>);
recipes.remove(OfferingTable);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("Malfcraft:shaped/internal/altar/OfferingTable", OfferingTable, 200, 200, [

			<thaumcraft:bath_salts>, <naturesaura:infused_iron>, <forbidden_arcanus:pixi>,

			<astralsorcery:blockmarble>, <totemic:stripped_cedar_log>, <astralsorcery:blockmarble>,

			<astralsorcery:blockmarble>, <totemic:stripped_cedar_log>, <astralsorcery:blockmarble>]);