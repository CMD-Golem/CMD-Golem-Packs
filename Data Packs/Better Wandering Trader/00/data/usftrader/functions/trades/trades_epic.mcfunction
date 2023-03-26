#Spawner Breaker
execute unless score #spawner_breaker usftrader matches 1 run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{tag:{usftrader:[{buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:red_dye",Count:1b,tag:{display:{Name:'{"text":"Spawner Breaker","color":"dark_purple","italic":false}',Lore:['{"text":"Drop on a Spawner to break it","color":"gray","italic":false}']},CustomModelData:4024112,usftrader_spawner_breaker:1b}}}]},id:"minecraft:emerald",Count:1b}],Tags:["usftrader_randomtrade_epic"],NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b}

#Creeper Disrupter
execute unless score #creeper_disruptor usftrader matches 1 run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{tag:{usftrader:[{buy:{id:"minecraft:emerald",Count:55b},sell:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"text":"Creeper Disrupter","color":"dark_purple","italic":false}',Lore:['{"text":"Disrupts all Creeper in a radius of 30 Blocks","color":"gray","italic":false}','{"text":"when placed on Ground","color":"gray","italic":false}']},CustomModelData:4024112,usftrader_creeper_disruptor:1b,EntityTag:{id:"minecraft:area_effect_cloud",Duration:2147483646,Tags:["usftrader_creeper_disruptor_spawn"]}}}}]},id:"minecraft:emerald",Count:1b}],Tags:["usftrader_randomtrade_epic"],NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b}

#end gate
execute unless score #end_gate usftrader matches 1 run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{tag:{usftrader:[{buy:{id:"minecraft:emerald",Count:45b},buyB:{id:"minecraft:popped_chorus_fruit",Count:1b},sell:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"End Gate","color":"dark_purple","italic":false}',Lore:['{"text":"Right click to teleport","color":"gray","italic":false}']},CustomModelData:4024113,usftrader_end_gate:1b}}}]},id:"minecraft:emerald",Count:1b}],Tags:["usftrader_randomtrade_epic"],NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b}

#Turtle Egg
execute unless score #turtle_egg usftrader matches 1 run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{tag:{usftrader:[{buy:{id:"minecraft:emerald",Count:50b},sell:{id:"minecraft:turtle_egg",Count:1b}}]},id:"minecraft:emerald",Count:1b}],Tags:["usftrader_randomtrade_epic"],NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b}