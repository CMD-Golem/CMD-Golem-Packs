#drop items which are in
execute unless block ~ ~ ~ chest{Items:[]} unless entity @e[tag=chestlock_unlocked,distance=..0.1] run function chest_lock:actions/drop

#lock chest
data merge block ~ ~ ~ {Lock:""}
#store data
data modify block ~ ~ ~ Items set from entity @e[tag=chestlock_cloud,distance=..0.1,limit=1] data.chestlock
#kill storage
kill @e[tag=chestlock_cloud2,distance=..0.1]

#message
playsound minecraft:block.iron_door.open block @s ~ ~ ~ 10 0.5
execute unless score #message chestlock matches 1 run title @s actionbar {"text":"Chest has been unlocked"}
execute if score #message chestlock matches 1 run tellraw @s {"text":"Chest has been unlocked"}