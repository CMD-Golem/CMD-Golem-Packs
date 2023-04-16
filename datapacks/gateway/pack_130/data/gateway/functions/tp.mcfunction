tag @p add gateway_tp

#Tp effects
playsound minecraft:block.end_portal.spawn master @p ~ ~ ~ 10 2
effect give @p minecraft:blindness 2 1 true
effect give @p minecraft:slowness 1 255 true
effect give @p minecraft:resistance 2 255 true

#teleport
tp @p @s