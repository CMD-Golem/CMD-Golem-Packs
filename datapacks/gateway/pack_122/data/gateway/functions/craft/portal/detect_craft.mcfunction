advancement revoke @s only gateway:portal_craft
recipe take @a gateway:portal_recipe

execute unless entity @s[tag=gateway_portal_craft] run scoreboard players reset @s gateway_craft
scoreboard players add @s gateway_craft 1
tag @s add gateway_portal_craft


schedule function gateway:craft/portal/craft 2t replace