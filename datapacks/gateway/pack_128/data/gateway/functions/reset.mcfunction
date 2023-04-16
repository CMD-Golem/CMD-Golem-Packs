#Remove entities
execute at @e[tag=gateway_portal] run forceload remove ~ ~
kill @e[tag=gateway_portal]

#Count reset
scoreboard players reset #count gateway
scoreboard players reset #id gateway

#Player
scoreboard players reset @a gateway