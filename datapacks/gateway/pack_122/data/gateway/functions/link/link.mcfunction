#Add score if player hasn't
execute unless score @s gateway matches 1.. run function gateway:link/score

#set score same
scoreboard players operation @e[sort=nearest,limit=1] gateway = @s gateway
tag @e[sort=nearest,limit=1] remove gateway_unlinked

#reset score if it was second link
execute as @e[tag=gateway_portal] unless entity @s[distance=..2] if score @e[sort=nearest,limit=1] gateway = @s gateway run scoreboard players reset @p gateway

#forceload chunks
forceload add ~ ~

#message
title @s title {"text":""}
title @s subtitle {"text":"Gateway linked","color":"dark_green"}
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 10 1.8

#durability
execute unless score #damage gateway matches 1 run function gateway:damage/durability