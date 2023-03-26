#get the cost
execute store result score @s usftrader_store run data get entity @s Item.tag.RepairCost
#set score to 45 if between 38 and 45 
execute if score @s usftrader_store matches 38..45 run scoreboard players set @s usftrader_store 45
#remove the cost 10 points
scoreboard players remove @s usftrader_store 10
#if the score isn't under 38 set new cost
execute unless score @s usftrader_store matches ..28 store result entity @s Item.tag.RepairCost int 1 run scoreboard players get @s usftrader_store
#kill xp cost reducer
execute unless score @s usftrader_store matches ..28 run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{usftrader_cost_reducer:1b}}}]
#sound
execute unless score @s usftrader_store matches ..28 run playsound minecraft:block.anvil.use master @p ~ ~ ~ 10 0.5
#message
execute unless score @s usftrader_store matches ..28 run tellraw @p ["",{"text":"The repair cost is now "},{"score":{"name":"@s","objective":"usftrader_store"}}]
execute if score @s usftrader_store matches ..28 run tellraw @p ["",{"text":"The Item has a to low repair cost and won't be repaired.","color":"red"}]

execute if score @s usftrader_store matches ..28 run tag @s add usftrader_cost_reducer