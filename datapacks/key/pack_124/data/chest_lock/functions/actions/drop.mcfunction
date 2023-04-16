setblock ~ 0 ~ green_shulker_box
data modify block ~ 0 ~ Items set from block ~ ~ ~ Items

#summon items
loot spawn ~ ~ ~ mine ~ 0 ~ air{drop_contents:1b}
execute if block ~1 0 ~ #chest_lock:air run setblock ~ 0 ~ air
execute unless block ~1 0 ~ #chest_lock:air run setblock ~ 0 ~ bedrock