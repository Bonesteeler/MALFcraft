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
import mods.futuremc.Stonecutter;

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

// Removes Unbalanced Recipes for Leather and Griefing Items from T-construct
mods.tconstruct.Drying.removeRecipe(<minecraft:leather>);
mods.tconstruct.Drying.removeRecipe(<tconstruct:edible>);
recipes.remove(<tconstruct:throwball>);
recipes.remove(<tconstruct:throwball:1>);
recipes.remove(<extrautils2:opinium:8>);

// Adds Tooltip
val infusedWood = <astralsorcery:blockinfusedwood>;
infusedWood.addTooltip(format.gold("Obtained by dropping Wood Logs in Liquid Starlight in-world"));

// Ancient Warfare 2
mods.futuremc.Stonecutter.addOutputs(<minecraft:stone>, <minecraft:glass>, <minecraft:sandstone>);