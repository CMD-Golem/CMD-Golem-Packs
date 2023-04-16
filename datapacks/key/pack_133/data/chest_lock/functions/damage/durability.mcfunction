#math
execute store result score @s chestlock_craft run data get entity @s SelectedItem.tag.Damage
scoreboard players remove @s chestlock_craft 100

#detect unbreaking
execute if predicate chest_lock:non run scoreboard players add @s chestlock_craft 1
execute if predicate chest_lock:lvl1 run scoreboard players add @s chestlock_craft 1
execute if predicate chest_lock:lvl2 run scoreboard players add @s chestlock_craft 1
execute if predicate chest_lock:lvl3 run scoreboard players add @s chestlock_craft 1

#set damage
item modify entity @s weapon.mainhand chest_lock:set_damage