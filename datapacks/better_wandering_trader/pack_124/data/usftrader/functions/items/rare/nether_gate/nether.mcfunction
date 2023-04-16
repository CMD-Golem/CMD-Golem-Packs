tp @s ~ 70 ~

execute at @s if block ~ ~-1 ~ #usftrader:non_solid run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 netherrack keep
execute at @s run fill ~1 ~2 ~1 ~-1 ~ ~-1 air destroy

tag @s add usftrader_gate_tp