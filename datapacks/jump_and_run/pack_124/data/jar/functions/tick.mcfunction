#Config
execute as @a[tag=jar_config] run function jar:config

#Start
execute at @e[tag=jar_e_start] if entity @a[distance=..1,tag=!jar_player] run tag @p add jar_start
execute as @a[tag=jar_start] run tag @s add jar_player
execute as @a[tag=jar_player] run function jar:game

#End
execute as @a[tag=jar_winner] run tag @s remove jar_winner
execute as @a[scores={jar_leave=1..}] run scoreboard players reset @s