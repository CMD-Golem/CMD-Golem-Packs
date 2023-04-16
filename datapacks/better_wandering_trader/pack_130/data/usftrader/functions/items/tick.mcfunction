###common###
#death coords
execute as @a[tag=!usftrader_death_coords,nbt={Inventory:[{tag:{usftrader_death_coords:1b}}]}] run tag @s add usftrader_death_coords
execute as @a[tag=usftrader_death_coords,nbt={Health:0f},limit=1] run function usftrader:items/common/death_coords
execute as @a[tag=usftrader_death_coords,nbt=!{Inventory:[{tag:{usftrader_death_coords:1b}}]}] run tag @s remove usftrader_death_coords

#toggle weather
execute as @e[tag=usftrader_toggle_weather] at @s run function usftrader:items/common/toggle_weather

#toggle day time
execute as @e[tag=usftrader_toggle_day] at @s run function usftrader:items/common/toggle_day

#horse upgrade health
execute at @e[type=item,nbt={Item:{Count:1b,tag:{usftrader_horse_health:1b}}},limit=1] as @e[type=horse,distance=..1,sort=nearest,limit=1,tag=!usftrader_horse_health] run function usftrader:items/common/horse_health

#horse upgrade speed
execute at @e[type=item,nbt={Item:{Count:1b,tag:{usftrader_horse_speed:1b}}},limit=1] as @e[type=horse,distance=..1,sort=nearest,limit=1,tag=!usftrader_horse_speed] run function usftrader:items/common/horse_speed

#horse upgrade jump
execute at @e[type=item,nbt={Item:{Count:1b,tag:{usftrader_horse_jump:1b}}},limit=1] as @e[type=horse,distance=..1,sort=nearest,limit=1,tag=!usftrader_horse_jump] run function usftrader:items/common/horse_jump

#bone dust
execute as @e[tag=usftrader_bone_dust] at @s if block ~ ~ ~ #minecraft:flowers run function usftrader:items/common/bone_dust


###rare###
#xp cost reducer
execute at @e[type=item,nbt={OnGround:1b,Item:{Count:1b,tag:{usftrader_cost_reducer:1b}}},limit=1] if block ~ ~-1 ~ minecraft:smithing_table as @e[type=item,distance=..1,sort=nearest,limit=1,tag=!usftrader_cost_reducer,nbt=!{Item:{tag:{usftrader_cost_reducer:1b}}}] run function usftrader:items/rare/xp_cost

#item magnet
execute at @a[nbt={SelectedItem:{tag:{usftrader_magnet:1b}}}] as @e[type=item,distance=..5,nbt={OnGround:1b}] run function usftrader:items/rare/item_magnet
execute at @a[nbt={Inventory:[{Slot:-106b,tag:{usftrader_magnet:1b}}]}] as @e[type=item,distance=..5,nbt={OnGround:1b}] run function usftrader:items/rare/item_magnet

#repair anvil
execute as @e[type=item,nbt={OnGround:1b,Item:{Count:1b,tag:{usftrader_anvil_repair:1b}}},limit=1] at @s if block ~ ~-1 ~ #usftrader:anvil run function usftrader:items/rare/anvil_repair

#nether Gate
execute as @a[scores={usftrader_carrot=1..},nbt={SelectedItem:{tag:{usftrader_nether_gate:1b}}}] at @s run function usftrader:items/rare/nether_gate/test

###epic###
#spawner breaker
execute as @e[type=item,nbt={Item:{Count:1b,tag:{usftrader_spawner_breaker:1b}}}] at @s if block ~ ~-1 ~ spawner run function usftrader:items/epic/spawner_breaker/break

#creeper disruptor
execute as @e[tag=usftrader_creeper_disruptor_spawn] at @s align xyz positioned ~0.5 ~ ~0.5 run function usftrader:items/epic/creeper_disruptor/spawn
execute at @e[tag=usftrader_creeper_disruptor] as @e[type=creeper,distance=..30,tag=!usftrader_creeper_mob] at @s run function usftrader:items/epic/creeper_disruptor/disruption
execute as @e[tag=usftrader_creeper_disruptor] at @s unless block ~ ~ ~ minecraft:andesite_wall run function usftrader:items/epic/creeper_disruptor/kill

#end Gate
execute as @a[scores={usftrader_carrot=1..},nbt={SelectedItem:{tag:{usftrader_end_gate:1b}}}] at @s run function usftrader:items/epic/end_gate/test

###reset###
execute as @a[scores={usftrader_carrot=1..}] run scoreboard players reset @s usftrader_carrot