tp @s ~ 60 ~

execute at @s if block ~ ~-1 ~ #usftrader:non_solid run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 end_stone keep
execute at @s run fill ~1 ~2 ~1 ~-1 ~ ~-1 air destroy


tag @s add usftrader_gate_tp