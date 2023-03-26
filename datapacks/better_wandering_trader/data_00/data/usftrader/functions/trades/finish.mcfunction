data merge entity @s {Offers:{Recipes:[{buy:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}},{buy:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}},{buy:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}},{buy:{id:"minecraft:air",Count:1b,sell:{id:"minecraft:air",Count:1b}},buy:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}},{buy:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}},{buy:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}},{buy:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}}]}}

#Add common Trades to trader
execute as @e[tag=usftrader_randomtrade_common,limit=1,sort=random] run function usftrader:trades/add_trade
execute as @e[tag=usftrader_randomtrade_common,limit=1,sort=random] run function usftrader:trades/add_trade
execute as @e[tag=usftrader_randomtrade_common,limit=1,sort=random] run function usftrader:trades/add_trade
execute as @e[tag=usftrader_randomtrade_common,limit=1,sort=random] run function usftrader:trades/add_trade

#Add rare Trades to trader
execute as @e[tag=usftrader_randomtrade_rare,limit=1,sort=random] run function usftrader:trades/add_trade
execute as @e[tag=usftrader_randomtrade_rare,limit=1,sort=random] run function usftrader:trades/add_trade

#Add epic Trade to trader
execute as @e[tag=usftrader_randomtrade_epic,limit=1,sort=random] run function usftrader:trades/add_trade

#finish
data merge entity @s {Attributes:[{Name:generic.knockbackResistance,Base:1.0d}]}
tag @s add usftrader_trader
tag @s remove usftrader_new
scoreboard players reset #newtrade_count usftrader