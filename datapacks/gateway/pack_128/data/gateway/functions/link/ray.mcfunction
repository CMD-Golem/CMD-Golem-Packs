#test for unlikend gateway
execute if entity @s[distance=..3] positioned ^ ^ ^1 if entity @e[tag=gateway_unlinked,distance=..1,sort=nearest,limit=1] align xyz positioned ~0.5 ~ ~0.5 run function gateway:link/link

#replay
execute if entity @s[distance=..3] positioned ^ ^ ^1 run function gateway:link/ray