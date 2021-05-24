import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockState;
import mods.botania.PureDaisy;
import mods.botania.ManaInfusion;
import mods.botania.Apothecary;
import mods.botania.Lexicon;
import mods.botania.RuneAltar;

// Changes Livingstone to require Roots Runestone
val Runestone = <roots:runestone>;
val livingrock = <botania:livingrock>;
PureDaisy.removeRecipe(livingrock);
PureDaisy.addRecipe(Runestone, livingrock);

// Changes Manasteel Recipe To Require Steel
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.removeRecipe(<botania:storage>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <immersiveengineering:metal:8>, 3000);
mods.botania.ManaInfusion.addInfusion(<botania:storage>, <immersiveengineering:storage:8>, 27000);

// Remove Endo-flame and Hydrangeas
mods.botania.Apothecary.removeRecipe("endoflame");
mods.botania.Apothecary.removeRecipe("hydroangeas");

// Petro-petunia replace Endoflame
val PetroPetunia = <botania:specialflower>.withTag({type: "petro_petunia"});
mods.botania.Apothecary.removeRecipe(PetroPetunia);
mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "petro_petunia"}), [<ore:petalRed>, <ore:petalWhite>, <ore:petalLime>, <ore:petalBrown>]);

// Re-Add Endoflame and Hydrangeas
val Endoflame = (<botania:specialflower>.withTag({type: "endoflame"}));
val Hydroangeas = (<botania:specialflower>.withTag({type: "hydroangeas"}));

// RuneAltar.addRecipe(Endoflame,[<ore:petalRed>, <ore:petalRed>, <ore:petalWhite>, <roots:infernal_bulb>]  2000);
// RuneAltar.addRecipe(Hydroangeas,[<ore:petalBlue>, <ore:petalLightBlue>, <ore:petalLightGray>, <roots:unending_bowl>], 2000);


