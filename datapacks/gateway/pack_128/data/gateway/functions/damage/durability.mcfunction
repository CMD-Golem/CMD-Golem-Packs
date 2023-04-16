#math (!!! Replace 100 with the Durability of the Tool !!!)
execute store result score @s gateway_craft run data get entity @s SelectedItem.tag.Damage
scoreboard players remove @s gateway_craft 100

#detect unbreaking
execute if predicate gateway:non run scoreboard players add @s gateway_craft 1
execute if predicate gateway:lvl1 run scoreboard players add @s gateway_craft 1
execute if predicate gateway:lvl2 run scoreboard players add @s gateway_craft 1
execute if predicate gateway:lvl3 run scoreboard players add @s gateway_craft 1

#set damage (!!! Replace the scale with the result of: -1 / Durability of the Tool !!!)
item modify entity @s weapon.mainhand gateway:set_damage