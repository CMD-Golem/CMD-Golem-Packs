#test for magma_cube spawner
execute if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ spawner align xyz positioned ~0.5 ~ ~0.5 run data merge block ~ ~ ~ {SpawnData:{entity:{id:"minecraft:magma_cube"}}}

#test further for spawner
execute if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ #usftrader:air run function usftrader:items/epic/spawner_breaker/detect/magma_cube
