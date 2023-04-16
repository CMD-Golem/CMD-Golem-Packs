#summon storage entity / chestlock_cloud2: to prevent item lost with old cloud: unlock
summon minecraft:marker ~ ~ ~ {Tags:["chestlock_cloud","chestlock_new","chestlock_cloud2"]}
#lock chest
data merge block ~ ~ ~ {Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}
#store data
data modify entity @e[tag=chestlock_cloud,distance=..0.1,limit=1] data.chestlock set from block ~ ~ ~ Items
#clear chest
data merge block ~ ~ ~ {Items:[]}
#store uuid
scoreboard players operation @e[tag=chestlock_cloud,distance=..0.1] chestlock = @s chestlock
#detect type
execute as @e[tag=chestlock_cloud,distance=..0.1] run function chest_lock:detect/type

#get name
item modify entity @s weapon.mainhand chest_lock:copy_name
data modify entity @e[tag=chestlock_cloud,sort=nearest,limit=1] CustomName set from entity @s SelectedItem.tag.display.Lore[1]
item modify entity @s weapon.mainhand chest_lock:delete_lore


#message
playsound minecraft:block.iron_door.close block @s ~ ~ ~ 10 0.5
execute unless score #message chestlock matches 1 run title @s actionbar {"text":"Chest has been locked"}
execute if score #message chestlock matches 1 run tellraw @s {"text":"Chest has been locked"}

execute unless score #damage chestlock matches 1 unless entity @s[gamemode=creative] at @s run function chest_lock:damage/durability