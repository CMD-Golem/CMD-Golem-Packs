#shulker box
setblock ~ 0 ~ green_shulker_box
data modify block ~ 0 ~ Items[{Slot:0b}] set from entity @s SelectedItem

#math
execute store result score @s chestlock_craft run data get entity @s SelectedItem.tag.Damage
execute unless entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking"}]}}}] run scoreboard players add @s chestlock_craft 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}}] if predicate chest_lock:lvl1 run scoreboard players add @s chestlock_craft 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}}] if predicate chest_lock:lvl2 run scoreboard players add @s chestlock_craft 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking"}]}}},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}}] if predicate chest_lock:lvl3 run scoreboard players add @s chestlock_craft 1

execute store result block ~ 0 ~ Items[{Slot:0b}].tag.Damage int 1 run scoreboard players get @s chestlock_craft


#give items
loot replace entity @s weapon.mainhand 1 mine ~ 0 ~ air{drop_contents:1b}
execute if block ~1 0 ~ #chest_lock:air run setblock ~ 0 ~ air
execute unless block ~1 0 ~ #chest_lock:air run setblock ~ 0 ~ bedrock