#get coords
execute store result score #death_coords_x usftrader_store run data get entity @s Pos[0]
execute store result score #death_coords_y usftrader_store run data get entity @s Pos[1]
execute store result score #death_coords_z usftrader_store run data get entity @s Pos[2]
#tell
tellraw @s ["",{"text":"Death Coords: ","bold":true,"color":"blue"},{"score":{"name":"#death_coords_x","objective":"usftrader_store"},"bold":true,"color":"dark_blue"},{"text":" ","bold":true,"color":"dark_blue"},{"score":{"name":"#death_coords_y","objective":"usftrader_store"},"bold":true,"color":"dark_blue"},{"text":" ","bold":true,"color":"dark_blue"},{"score":{"name":"#death_coords_z","objective":"usftrader_store"},"bold":true,"color":"dark_blue"}]
execute at @s run playsound minecraft:block.conduit.attack.target master @s ~ ~ ~ 10 2
#clear item
clear @s minecraft:compass{usftrader_death_coords:1b} 1