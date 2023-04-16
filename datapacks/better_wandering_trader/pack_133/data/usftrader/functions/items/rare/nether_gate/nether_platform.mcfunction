execute at @a[tag=usftrader_nethergate] if block ~ ~-1 ~ #usftrader:air run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 netherrack keep
execute at @a[tag=usftrader_nethergate] run fill ~2 ~3 ~2 ~-2 ~-1 ~-2 netherrack replace lava
execute at @a[tag=usftrader_nethergate] run fill ~1 ~2 ~1 ~-1 ~ ~-1 air destroy
execute at @a[tag=usftrader_nethergate] run kill @e[type=item,nbt={Item:{id:"minecraft:netherrack"}}]

tag @s remove usftrader_nethergate