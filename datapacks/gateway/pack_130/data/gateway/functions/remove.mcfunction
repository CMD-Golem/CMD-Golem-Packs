#Remove Other
execute as @e[tag=gateway_portal] unless entity @s[distance=..2] if score @e[sort=nearest,limit=1] gateway = @s gateway run summon item ~ ~ ~ {Item:{id:"minecraft:phantom_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Gateway","italic":false}'},EntityTag:{id:"minecraft:marker",Tags:["gateway_point"]},CustomModelData:4268769}}}
execute as @e[tag=gateway_portal] unless entity @s[distance=..2] if score @e[sort=nearest,limit=1] gateway = @s gateway at @s run forceload remove ~ ~
execute as @e[tag=gateway_portal] unless entity @s[distance=..2] if score @e[sort=nearest,limit=1] gateway = @s gateway run scoreboard players remove #count gateway 1
execute as @e[tag=gateway_portal] unless entity @s[distance=..2] if score @e[sort=nearest,limit=1] gateway = @s gateway run kill @s

#Remove This
summon item ~ ~ ~ {Item:{id:"minecraft:phantom_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Gateway","italic":false}'},EntityTag:{id:"minecraft:marker",Tags:["gateway_point"]},CustomModelData:4268769}}}
forceload remove ~ ~
kill @s

#restore forceload
execute at @e[tag=gateway_portal] run forceload add ~ ~

particle minecraft:portal ~ ~1.5 ~ 0.5 0.5 0.5 1 50
playsound minecraft:block.beacon.deactivate master @p ~ ~ ~ 10 1.8