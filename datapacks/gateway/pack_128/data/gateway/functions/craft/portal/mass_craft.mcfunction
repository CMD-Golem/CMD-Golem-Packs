execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:ender_eye"},Age:1},distance=..3]

clear @s ender_eye 1
give @s minecraft:phantom_spawn_egg{display:{Name:'{"text":"Gateway","italic":false}'},EntityTag:{id:"minecraft:marker",Tags:["gateway_point"]},CustomModelData:4268769} 1
scoreboard players remove @s gateway_craft 1

execute if entity @s[scores={gateway_craft=1..}] run function gateway:craft/portal/mass_craft