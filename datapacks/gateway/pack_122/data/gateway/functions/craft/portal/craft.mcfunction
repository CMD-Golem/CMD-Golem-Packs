execute as @a[tag=gateway_portal_craft] at @s unless entity @e[type=item,nbt={Item:{tag:{gateway:"portal"}},Age:1s},distance=..3] run clear @s ender_eye 1
execute at @a[tag=gateway_portal_craft] run kill @e[type=item,nbt={Item:{id:"minecraft:ender_eye"},Age:1s},distance=..3]

give @a[tag=gateway_portal_craft] minecraft:phantom_spawn_egg{display:{Name:'{"text":"Gateway","italic":false}'},EntityTag:{id:"minecraft:area_effect_cloud",Tags:["gateway_point"],Radius:0.0f,Duration:10},CustomModelData:4268769}
scoreboard players remove @a[tag=gateway_portal_craft] gateway_craft 1

execute as @a[tag=gateway_portal_craft,scores={gateway_craft=1..}] run function gateway:craft/portal/mass_craft

tag @a[tag=gateway_portal_craft] remove gateway_portal_craft