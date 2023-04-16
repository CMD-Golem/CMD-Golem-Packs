advancement revoke @s only gateway:linker_craft
recipe take @a gateway:linker_recipe

execute unless entity @s[tag=gateway_linker_craft] run scoreboard players reset @s gateway_craft
scoreboard players add @s gateway_craft 1
tag @s add gateway_linker_craft


schedule function gateway:craft/linker/craft 2t replace