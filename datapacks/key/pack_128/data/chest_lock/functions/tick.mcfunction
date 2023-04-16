#detect key use
execute as @a[scores={chestlock_use=1..},nbt={SelectedItem:{tag:{chestlock_item:1b}}}] at @s anchored eyes run function chest_lock:detect/main
#detect broken chest
execute as @e[tag=chestlock_cloud] at @s unless block ~ ~ ~ chest unless entity @e[tag=chestlock_unlocked,distance=..0.1] run function chest_lock:actions/broken

#UUID of Player
execute as @a[tag=!chestlock_hasuuid] run function chest_lock:uuid

#reset
execute as @a[scores={chestlock_use=1..}] run scoreboard players reset @s chestlock_use

#repair
execute unless score #damage chestlock matches 1 as @e[type=item,nbt={Item:{tag:{chestlock_item:1b}}}] at @s if block ~ ~-1 ~ #minecraft:anvil if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_ingot"}}] run function chest_lock:damage/detect