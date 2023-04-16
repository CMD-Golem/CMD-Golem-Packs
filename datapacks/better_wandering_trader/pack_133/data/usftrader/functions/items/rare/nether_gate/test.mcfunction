execute unless predicate usftrader:nether in minecraft:the_nether run function usftrader:items/rare/nether_gate/nether

execute if predicate usftrader:nether in minecraft:overworld run tp @s ~ 320 ~

clear @s carrot_on_a_stick{usftrader_nether_gate:1b} 1

effect give @s minecraft:resistance 20 5
effect give @s minecraft:blindness 8
effect give @s minecraft:nausea 8

playsound minecraft:block.portal.travel master @s ~ ~ ~ 