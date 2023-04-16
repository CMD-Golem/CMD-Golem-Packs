scoreboard players set #count gateway 1
execute as @e[tag=gateway_portal,tag=!gateway_unlinked] run scoreboard players add #count gateway 1

execute if score #count gateway <= #max gateway anchored eyes run function gateway:link/ray

#message if max count is reached
execute if score #count gateway > #max gateway anchored eyes run tellraw @s ["",{"text":"[Gateway] The maximum of Gateways is reached.","color":"dark_red"},{"text":"\n[Gateway] If you have admin privileges you can change the maximum possible amount of Gateways in the World by executing the following command and replace 20 with the wanted amount.\n"},{"text":"/scoreboard players set #max gateway 20","italic":true,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set #max gateway 20"},"hoverEvent":{"action":"show_text","value":"Click on the command to get it pasted into the chat."}},{"text":"\n "}]
