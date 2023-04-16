playsound minecraft:block.chest.locked block @s ~ ~ ~ 10 1


execute if score #message chestlock matches 1 run tellraw @s ["",{"text":"Chest is locked by "},{"selector":"@e[tag=chestlock_cloud,distance=..0.1,limit=1]"}]
execute unless score #message chestlock matches 1 run title @s actionbar ["",{"text":"Chest is locked by "},{"selector":"@e[tag=chestlock_cloud,distance=..0.1,limit=1]"}]

