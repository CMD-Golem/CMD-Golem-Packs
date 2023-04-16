execute unless predicate usftrader:end in minecraft:the_end run function usftrader:items/epic/end_gate/end

execute if predicate usftrader:end in minecraft:overworld run tp @s ~ 320 ~

clear @s carrot_on_a_stick{usftrader_end_gate:1b} 1

effect give @s minecraft:resistance 20 5
effect give @s minecraft:blindness 5
effect give @s minecraft:nausea 5

playsound minecraft:block.portal.travel master @s ~ ~ ~ 