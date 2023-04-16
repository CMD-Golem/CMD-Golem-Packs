#double chest
execute if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ chest unless block ~ ~ ~ chest[type=single] align xyz positioned ~0.5 ~ ~0.5 run function chest_lock:detect/double
#single chest
execute if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ chest[type=single] align xyz positioned ~0.5 ~ ~0.5 run function chest_lock:detect/single

#test further for chest
execute if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ #chest_lock:non_solid run function chest_lock:detect/main
