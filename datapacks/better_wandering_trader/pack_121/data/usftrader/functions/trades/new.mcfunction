execute unless entity @e[tag=usftrader_new] run function #minecraft:usftrader

#Select common trades
execute store result score #randomtrade_common usftrader run execute if entity @e[tag=usftrader_randomtrade_common]
execute unless score #randomtrade_common usftrader matches ..4 run kill @e[tag=usftrader_randomtrade_common,limit=1,sort=random]

#Select rare trades
execute store result score #randomtrade_rare usftrader run execute if entity @e[tag=usftrader_randomtrade_rare]
execute unless score #randomtrade_rare usftrader matches ..2 run kill @e[tag=usftrader_randomtrade_rare,limit=1,sort=random]

#Select epic trade
execute store result score #randomtrade_epic usftrader run execute if entity @e[tag=usftrader_randomtrade_epic]
execute unless score #randomtrade_epic usftrader matches ..1 run kill @e[tag=usftrader_randomtrade_epic,limit=1,sort=random]

#finish
execute unless entity @e[tag=usftrader_new] run tag @s add usftrader_new

execute if score #randomtrade_common usftrader matches ..4 if score #randomtrade_rare usftrader matches ..2 if score #randomtrade_epic usftrader matches ..1 run function usftrader:trades/finish