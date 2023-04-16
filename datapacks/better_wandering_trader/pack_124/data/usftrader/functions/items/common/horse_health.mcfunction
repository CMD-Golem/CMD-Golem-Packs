#get the health
execute store result score @s usftrader_store run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
#add 2 healths
scoreboard players add @s usftrader_store 2
#if the score isn't over 30 set new health
execute unless score @s usftrader_store matches 32.. store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get @s usftrader_store
#kill horse upgrade: health 
execute unless score @s usftrader_store matches 32.. run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{usftrader_horse_health:1b}}}]
#sound
execute unless score @s usftrader_store matches 32.. run playsound minecraft:block.anvil.use master @p ~ ~ ~ 10 1.3
#message
execute if score @s usftrader_store matches 30.. run tellraw @p ["",{"text":"The Horse has reached its maximum health.","color":"red"}]
execute if score @s usftrader_store matches 30.. run tag @s add usftrader_horse_health