#detect key use
execute as @a[scores={chestlock_carrot=1..},nbt={SelectedItem:{tag:{chestlock_item:1b}}}] at @s anchored eyes run function chest_lock:detect/main
#detect broken chest
execute as @e[tag=chestlock_cloud] at @s unless block ~ ~ ~ chest unless entity @e[tag=chestlock_unlocked,distance=..0.1] run function chest_lock:actions/broken

#UUID of Player
execute as @a[tag=!chestlock_hasuuid] run function chest_lock:uuid

#reset
execute as @a[scores={chestlock_carrot=1..}] run scoreboard players reset @s chestlock_carrot