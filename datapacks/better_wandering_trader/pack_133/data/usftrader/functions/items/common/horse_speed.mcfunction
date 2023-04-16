#get the health
execute store result score @s usftrader_store run data get entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base 1000
#add 2 healths
scoreboard players add @s usftrader_store 10
#if the score isn't over 30 set new health
execute unless score @s usftrader_store matches 340.. store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 0.001 run scoreboard players get @s usftrader_store
#kill horse upgrade: health 
execute unless score @s usftrader_store matches 340.. run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{usftrader_horse_speed:1b}}}]
#sound
execute unless score @s usftrader_store matches 340.. run playsound minecraft:block.anvil.use master @p ~ ~ ~ 10 1.3
#message
execute if score @s usftrader_store matches 330.. run tellraw @p ["",{"text":"The Horse has reached its maximum speed.","color":"red"}]
execute if score @s usftrader_store matches 330.. run tag @s add usftrader_horse_speed