advancement revoke @s only item_frame:invisible_item_frame
recipe take @a item_frame:invisible_item_frame

execute unless entity @s[tag=itemframe_craft] run scoreboard players reset @s item_frame
scoreboard players add @s item_frame 1
tag @s add itemframe_craft


schedule function item_frame:craft/craft 2t replace