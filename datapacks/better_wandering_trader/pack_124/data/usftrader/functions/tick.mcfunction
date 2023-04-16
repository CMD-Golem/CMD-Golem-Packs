#give new trades
execute as @e[type=wandering_trader,tag=!usftrader_trader,limit=1] at @s run function usftrader:trades/new

#attack after hit
execute as @e[tag=usftrader_trader,nbt={HurtTime:10s}] at @s run function usftrader:attack

#spawn 
execute unless score #spawn_normal usftrader matches 1 run function usftrader:spawn/test

#activate items
function usftrader:items/tick