execute at @a[tag=usftrader_endgate] if block ~ ~-1 ~ #usftrader:air run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 end_stone keep
execute at @a[tag=usftrader_endgate] run fill ~1 ~2 ~1 ~-1 ~ ~-1 air destroy

tag @s remove usftrader_endgate