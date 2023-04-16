execute store result score @s gateway_craft run data get entity @s Item.tag.Damage

execute if score @s gateway_craft matches 1.. run function gateway:damage/repair
