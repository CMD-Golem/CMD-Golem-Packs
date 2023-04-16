#store data for transform, spawn/ store despawntime for spawn / store badness of player for spawn
scoreboard objectives add usftrader dummy
#store health for angry/ store data for items/ store UUID of player
scoreboard objectives add usftrader_store dummy


scoreboard objectives add usftrader_carrot minecraft.used:minecraft.carrot_on_a_stick

execute unless score #spawn_normal usftrader matches 1 run gamerule doTraderSpawning false
execute if score #spawn_normal usftrader matches 1 run gamerule doTraderSpawning true