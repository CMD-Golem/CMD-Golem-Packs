#test for blaze spawner
execute if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ spawner align xyz positioned ~0.5 ~ ~0.5 run data merge block ~ ~ ~ {SpawnData:{id:"minecraft:blaze"},SpawnPotentials:[{Entity:{id:"minecraft:blaze"},Weight:1}]}

#test further for spawner
execute if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ #usftrader:non_solid run function usftrader:items/epic/spawner_breaker/detect/blaze