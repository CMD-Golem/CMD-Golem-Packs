summon minecraft:wandering_trader ~ ~ ~ {PersistenceRequired:1b,Tags:["usftrader_spawn_new"]}

#set target
execute at @p[tag=usftrader_spawn_player] as @e[tag=usftrader_spawn_new] run data modify entity @s WanderTarget.X set from entity @p Pos[0]
execute at @p[tag=usftrader_spawn_player] as @e[tag=usftrader_spawn_new] run data modify entity @s WanderTarget.Y set from entity @p Pos[1]
execute at @p[tag=usftrader_spawn_player] as @e[tag=usftrader_spawn_new] run data modify entity @s WanderTarget.Z set from entity @p Pos[2]

#remove groundtest armorstand
kill @s
tag @a remove usftrader_spawn_player

#sound
playsound minecraft:entity.wandering_trader.reappeared master @s