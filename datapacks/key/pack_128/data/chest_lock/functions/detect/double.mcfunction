function chest_lock:detect/single

#detect for connected chest if chest right
execute if block ~ ~ ~ chest[type=right,facing=north] positioned ~-1 ~ ~ run function chest_lock:detect/single
execute if block ~ ~ ~ chest[type=right,facing=east] positioned ~ ~ ~-1 run function chest_lock:detect/single
execute if block ~ ~ ~ chest[type=right,facing=south] positioned ~1 ~ ~ run function chest_lock:detect/single
execute if block ~ ~ ~ chest[type=right,facing=west] positioned ~ ~ ~1 run function chest_lock:detect/single

#detect for connected chest if chest left
execute if block ~ ~ ~ chest[type=left,facing=north] positioned ~1 ~ ~ run function chest_lock:detect/single
execute if block ~ ~ ~ chest[type=left,facing=east] positioned ~ ~ ~1 run function chest_lock:detect/single
execute if block ~ ~ ~ chest[type=left,facing=south] positioned ~-1 ~ ~ run function chest_lock:detect/single
execute if block ~ ~ ~ chest[type=left,facing=west] positioned ~ ~ ~-1 run function chest_lock:detect/single