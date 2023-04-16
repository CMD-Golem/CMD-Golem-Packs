#repair chipped_anvil
execute if block ~ ~-1 ~ chipped_anvil[facing=north] run setblock ~ ~-1 ~ anvil[facing=north]
execute if block ~ ~-1 ~ chipped_anvil[facing=south] run setblock ~ ~-1 ~ anvil[facing=south]
execute if block ~ ~-1 ~ chipped_anvil[facing=west] run setblock ~ ~-1 ~ anvil[facing=west]
execute if block ~ ~-1 ~ chipped_anvil[facing=east] run setblock ~ ~-1 ~ anvil[facing=east]
#repair damaged_anvil
execute if block ~ ~-1 ~ damaged_anvil[facing=north] run setblock ~ ~-1 ~ chipped_anvil[facing=north]
execute if block ~ ~-1 ~ damaged_anvil[facing=south] run setblock ~ ~-1 ~ chipped_anvil[facing=south]
execute if block ~ ~-1 ~ damaged_anvil[facing=west] run setblock ~ ~-1 ~ chipped_anvil[facing=west]
execute if block ~ ~-1 ~ damaged_anvil[facing=east] run setblock ~ ~-1 ~ chipped_anvil[facing=east]
#kill item
kill @s