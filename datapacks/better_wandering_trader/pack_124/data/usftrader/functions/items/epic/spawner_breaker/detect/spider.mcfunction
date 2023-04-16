#test for spider spawner
execute if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ spawner align xyz positioned ~0.5 ~ ~0.5 run data merge block ~ ~ ~ {SpawnData:{id:"minecraft:spider"},SpawnPotentials:[{Entity:{id:"minecraft:spider"},Weight:1}]}

#test further for spawner
execute if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ #usftrader:non_solid run function usftrader:items/epic/spawner_breaker/detect/spider
