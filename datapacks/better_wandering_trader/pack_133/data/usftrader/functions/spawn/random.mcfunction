#select player
execute as @a unless score @s usftrader matches 1.. at @s if predicate usftrader:overworld if block ~ ~50 ~ #usftrader:non_solid run tag @s add usftrader_spawn_next
execute as @r[tag=usftrader_spawn_next] run tag @s add usftrader_spawn_player
tag @a remove usftrader_spawn_next

#summon random
execute at @a[tag=usftrader_spawn_player] run summon minecraft:bee ~ ~50 ~ {PortalCooldown:1000,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["usftrader_spawn_random"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}

#remove badness
execute as @a[scores={usftrader=1..}] run scoreboard players remove @s usftrader 1

#reset day counter
scoreboard players reset #day usftrader