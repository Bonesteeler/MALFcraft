import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.astralsorcery.Altar;
import mods.tconstruct.Drying;
import mods.roots.Mortar;

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

recipes.removeByMod("ancientwarfare");

mods.tconstruct.Drying.removeRecipe(<minecraft:leather>);
mods.tconstruct.Drying.removeRecipe(<tconstruct:edible>);
recipes.remove(<tconstruct:throwball>);
recipes.remove(<extrautils2:opinium:8>);

val portal_core = <extrautils2:opinium:8>;
recipes.addShaped("NewCore",portal_core, [[<arcanearchives:raw_quartz_cluster>,<thaumcraft:salis_mundus>,<totemic:eagle_drops>],
[<naturesaura:effect_powder>,<waystones:warp_stone>,<astralsorcery:itemusabledust>],[<botania:manaresource:8>,<roots:infernal_bulb>,<tconstruct:nuggets:2>]]);

Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/lens_grow");