execute if predicate usftrader:overworld in minecraft:the_nether run function usftrader:items/rare/nether_gate/nether
execute if predicate usftrader:end in minecraft:the_nether run function usftrader:items/rare/nether_gate/nether

execute if predicate usftrader:nether in minecraft:overworld run function usftrader:items/rare/nether_gate/overworld

clear @s carrot_on_a_stick{usftrader_nether_gate:1b} 1
tag @s remove usftrader_gate_tp

effect give @s minecraft:resistance 20 5
effect give @s minecraft:blindness 5
effect give @s minecraft:nausea 5

playsound minecraft:block.portal.travel master @s ~ ~ ~ 