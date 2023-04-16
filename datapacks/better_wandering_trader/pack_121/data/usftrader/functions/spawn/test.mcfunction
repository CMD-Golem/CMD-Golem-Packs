#Count days
execute store result score #daytime usftrader run time query daytime
execute if score #daytime usftrader matches 2000 run scoreboard players add #day usftrader 1

#spawn bat for randomness
execute if score #day usftrader matches 5.. run function usftrader:spawn/random

#summon armorstand which falls down after cooldown from random
execute at @e[tag=usftrader_spawn_random,nbt={PortalCooldown:0}] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["usftarder_spawn_ground"]}
execute as @e[tag=usftrader_spawn_random,nbt={PortalCooldown:0}] run tp @s ~ ~-1000 ~

#summon wandering trader after armorstands hit ground
execute as @e[tag=usftarder_spawn_ground] at @s unless block ~ ~-0.1 ~ minecraft:air run function usftrader:spawn/spawn

#despawn after 3 Days
execute as @e[tag=usftrader_trader] run scoreboard players add @s usftrader 1
execute as @e[tag=usftrader_trader,scores={usftrader=48000..}] at @s run function usftrader:spawn/despawn