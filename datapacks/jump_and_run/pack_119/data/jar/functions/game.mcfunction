#Timer
scoreboard players add #tps jar_time 1
execute if score #tps jar_time matches 20 run scoreboard players add @a[tag=jar_player] jar_time 1
execute if score #tps jar_time matches 20 run scoreboard players set #tps jar_time 0

#Titel
execute as @a[tag=jar_player] run title @s actionbar ["",{"text":"Elapsed Time: ","color":"gold"},{"score":{"name":"@s","objective":"jar_time"},"bold":true,"color":"dark_red"},{"text":"s","bold":true,"color":"dark_red"}]

#Start
execute as @a[tag=jar_start] run scoreboard players set @s jar_time 0
execute as @a[tag=jar_start] at @s if entity @e[tag=jar_e_start,distance=..1] unless score @s jar_cpoint = @e[tag=jar_e_start,distance=..1,limit=1] jar_cpoint run scoreboard players operation @s jar_cpoint = @e[tag=jar_e_start,limit=1,distance=..1] jar_cpoint
execute as @a[tag=jar_start] run tag @s remove jar_start

#Check Point (cpoint)
execute as @a[tag=jar_player] at @s if entity @e[tag=jar_e_cpoint,distance=..1] unless score @s jar_cpoint = @e[tag=jar_e_cpoint,distance=..1,limit=1] jar_cpoint run tag @s add jar_addcpoint
execute as @a[tag=jar_addcpoint] run title @s title {"text":"Check Point","bold":true,"color":"dark_red"}
execute as @a[tag=jar_addcpoint] at @s run scoreboard players operation @s jar_cpoint = @e[tag=jar_e_cpoint,limit=1,distance=..1] jar_cpoint
execute as @a[tag=jar_addcpoint] run tag @s remove jar_addcpoint

#End
replaceitem entity @a[tag=jar_player] hotbar.8 minecraft:barrier{display:{Name:"{\"text\":\"Leave the Game\",\"color\":\"dark_red\",\"bold\":true}"},HideFlags:jar_leave}
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{HideFlags:jar_leave}}}]
execute as @a[scores={jar_leave=1..}] run title @s title {"text":""}
execute as @a[scores={jar_leave=1..}] run title @s subtitle {"text":"You left the Jump and Run","bold":true,"color":"dark_red"}
execute as @a[scores={jar_leave=1..}] run scoreboard players reset @s jar_time
execute as @a[scores={jar_leave=1..}] run scoreboard players reset @s jar_cpoint
execute as @a[scores={jar_leave=1..}] run clear @s minecraft:barrier{HideFlags:jar_leave}
execute as @a[scores={jar_leave=1..}] run tag @s remove jar_player

#Failed
execute as @a[tag=jar_player] at @s unless block ~ ~-0.1 ~ #jar:jar run tag @p add jar_failed
execute as @a[tag=jar_failed] at @s unless entity @e[tag=jar_e_start,distance=..1.3] run title @s title {"text":"Respawn","bold":true,"color":"dark_red"}
execute at @a[tag=jar_failed] as @e[tag=jar_e_cpoint] if score @p jar_cpoint = @s jar_cpoint run teleport @p @s
execute at @a[tag=jar_failed] as @e[tag=jar_e_start] unless entity @e[tag=jar_e_start,distance=..1.3] if score @p jar_cpoint = @s jar_cpoint run teleport @p @s
execute as @a[tag=jar_failed] run tag @s remove jar_failed

#End win
execute as @a[tag=jar_player] at @s if entity @e[tag=jar_e_ziel,distance=..1] run tag @s add jar_winner
execute as @a[tag=jar_winner] run title @s title {"text":"End","bold":true,"color":"dark_red"}
execute as @a[tag=jar_winner] run title @s subtitle ["",{"text":"You needed ","color":"gold"},{"score":{"name":"@s","objective":"jar_time"},"bold":true,"color":"dark_red"},{"text":"s","bold":true,"color":"dark_red"}]
execute as @a[tag=jar_winner] run scoreboard players reset @s jar_time
execute as @a[tag=jar_winner] run scoreboard players reset @s jar_cpoint
execute as @a[tag=jar_winner] run clear @s minecraft:barrier{HideFlags:jar_leave}
execute as @a[tag=jar_winner] run tag @s remove jar_player
#https://cmd-golem.jimdofree.com/