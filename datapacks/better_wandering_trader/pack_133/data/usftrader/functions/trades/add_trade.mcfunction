#setup
scoreboard players add #newtrade_count usftrader 1

#Add trades
execute if score #newtrade_count usftrader matches 1 run data modify entity @e[tag=usftrader_new,sort=nearest,limit=1] Offers.Recipes[0] set from entity @s ArmorItems[0].tag.usftrader[0]
execute if score #newtrade_count usftrader matches 2 run data modify entity @e[tag=usftrader_new,sort=nearest,limit=1] Offers.Recipes[1] set from entity @s ArmorItems[0].tag.usftrader[0]
execute if score #newtrade_count usftrader matches 3 run data modify entity @e[tag=usftrader_new,sort=nearest,limit=1] Offers.Recipes[2] set from entity @s ArmorItems[0].tag.usftrader[0]
execute if score #newtrade_count usftrader matches 4 run data modify entity @e[tag=usftrader_new,sort=nearest,limit=1] Offers.Recipes[3] set from entity @s ArmorItems[0].tag.usftrader[0]
execute if score #newtrade_count usftrader matches 5 run data modify entity @e[tag=usftrader_new,sort=nearest,limit=1] Offers.Recipes[4] set from entity @s ArmorItems[0].tag.usftrader[0]
execute if score #newtrade_count usftrader matches 6 run data modify entity @e[tag=usftrader_new,sort=nearest,limit=1] Offers.Recipes[5] set from entity @s ArmorItems[0].tag.usftrader[0]
execute if score #newtrade_count usftrader matches 7 run data modify entity @e[tag=usftrader_new,sort=nearest,limit=1] Offers.Recipes[6] set from entity @s ArmorItems[0].tag.usftrader[0]

#Remove
kill @s