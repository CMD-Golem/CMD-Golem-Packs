#summon storage entity
summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{id:"minecraft:stone",Count:1b,tag:{Items:[]}},{}],NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["chestlock_cloud","chestlock_new"]}
#lock chest
data merge block ~ ~ ~ {Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}
#store data
data modify entity @e[tag=chestlock_cloud,distance=..0.1,limit=1] ArmorItems[2].tag.Items set from block ~ ~ ~ Items
#clear chest
data merge block ~ ~ ~ {Items:[]}
#store uuid
scoreboard players operation @e[tag=chestlock_cloud,distance=..0.1] chestlock = @s chestlock
#detect type
execute as @e[tag=chestlock_cloud,distance=..0.1] run function chest_lock:actions/type

#get name
tag @s add chestlock_new
setblock ~ 0 ~ oak_sign{Text1:'{"selector":"@a[tag=chestlock_new]"}'}
data modify entity @e[tag=chestlock_cloud,sort=nearest,limit=1] CustomName set from block ~ 0 ~ Text1

tag @s remove chestlock_new
execute if block ~1 0 ~ #chest_lock:air run setblock ~ 0 ~ air
execute unless block ~1 0 ~ #chest_lock:air run setblock ~ 0 ~ bedrock


#message
playsound minecraft:block.iron_door.close block @s ~ ~ ~ 10 0.5
execute unless score #message chestlock matches 1 run title @s actionbar {"text":"Chest has been locked"}
execute if score #message chestlock matches 1 run tellraw @s {"text":"Chest has been locked"}