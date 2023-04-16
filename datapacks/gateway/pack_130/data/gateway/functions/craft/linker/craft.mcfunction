execute as @a[tag=gateway_linker_craft] at @s unless entity @e[type=item,nbt={Item:{tag:{gateway:"linker"}},Age:1s},distance=..3] run clear @s ender_eye 1
execute at @a[tag=gateway_linker_craft] run kill @e[type=item,nbt={Item:{id:"minecraft:ender_eye"},Age:1s},distance=..3]

give @a[tag=gateway_linker_craft] minecraft:warped_fungus_on_a_stick{gateway:"linker",display:{Name:'{"text":"Gateway Linker","italic":false}'},CustomModelData:4268769} 1
scoreboard players remove @a[tag=gateway_linker_craft] gateway_craft 1

execute as @a[tag=gateway_linker_craft,scores={gateway_craft=1..}] run function gateway:craft/linker/mass_craft

tag @a[tag=gateway_linker_craft] remove gateway_linker_craft