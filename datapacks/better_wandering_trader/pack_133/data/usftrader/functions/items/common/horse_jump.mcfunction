#get the health
execute store result score @s usftrader_store run data get entity @s Attributes[{Name:"minecraft:horse.jump_strength"}].Base 100
#add 2 healths
scoreboard players add @s usftrader_store 5
#if the score isn't over 30 set new health
execute unless score @s usftrader_store matches 105.. store result entity @s Attributes[{Name:"minecraft:horse.jump_strength"}].Base double 0.01 run scoreboard players get @s usftrader_store
#kill horse upgrade: health 
execute unless score @s usftrader_store matches 105.. run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{usftrader_horse_jump:1b}}}]
#sound
execute unless score @s usftrader_store matches 105.. run playsound minecraft:block.anvil.use master @p ~ ~ ~ 10 1.3
#message
execute if score @s usftrader_store matches 100.. run tellraw @p ["",{"text":"The Horse has reached its maximum jump strength.","color":"red"}]
execute if score @s usftrader_store matches 100.. run tag @s add usftrader_horse_jump