execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:ender_eye"},Age:1},distance=..3]

clear @s ender_eye 1
give @s minecraft:warped_fungus_on_a_stick{gateway:"linker",display:{Name:'{"text":"Gateway Linker","italic":false}'},CustomModelData:4268769}
scoreboard players remove @s gateway_craft 1

execute if entity @s[scores={gateway_craft=1..}] run function gateway:craft/linker/mass_craft