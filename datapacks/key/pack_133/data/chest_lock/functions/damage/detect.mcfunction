execute store result score @s chestlock_craft run data get entity @s Item.tag.Damage

execute if score @s chestlock_craft matches 1.. run function chest_lock:damage/repair
