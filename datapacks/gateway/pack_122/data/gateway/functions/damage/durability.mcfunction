#shulker box
execute if block ~ 0 ~ minecraft:air run scoreboard players set #bedrock gateway_craft 0
execute unless block ~ 0 ~ minecraft:air run scoreboard players set #bedrock gateway_craft 1
setblock ~ 0 ~ green_shulker_box
data modify block ~ 0 ~ Items[{Slot:0b}] set from entity @s SelectedItem

#math
execute store result score @s gateway_craft run data get entity @s SelectedItem.tag.Damage
execute unless entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking"}]}}}] run scoreboard players add @s gateway_craft 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}}] if predicate gateway_craft:unbreaking_lvl1 run scoreboard players add @s gateway_craft 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}}] if predicate gateway_craft:unbreaking_lvl2 run scoreboard players add @s gateway_craft 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking"}]}}},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}}] if predicate gateway_craft:unbreaking_lvl3 run scoreboard players add @s gateway_craft 1

execute store result block ~ 0 ~ Items[{Slot:0b}].tag.Damage int 1 run scoreboard players get @s gateway_craft


#give items
loot replace entity @s weapon.mainhand 1 mine ~ 0 ~ air{drop_contents:1b}
execute unless score #bedrock gateway_craft matches 0 run setblock ~ 0 ~ bedrock
execute if score #bedrock gateway_craft matches 0 run setblock ~ 0 ~ air