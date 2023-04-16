advancement revoke @s only chest_lock:recipe
recipe take @a chest_lock:recipe

execute unless entity @s[tag=chestlock_craft] run scoreboard players reset @s chestlock_craft
scoreboard players add @s chestlock_craft 1
tag @s add chestlock_craft


schedule function chest_lock:craft/craft 2t replace