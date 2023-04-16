#Title
title @a[tag=jar_config_ok] actionbar {"text":"Config Mode is active","bold":true,"color":"dark_red"}
execute as @a[tag=jar_config,tag=!jar_config_ok] run tellraw @s ["",{"text":"The Jump and Run may ","color":"green"},{"text":"only","bold":true,"color":"dark_green"},{"text":" Contain the following Blocks:","color":"green"},{"text":"\n - Slaps and double Slabs\n - Glass Panes and Iron Bars\n - Fences and Walls\n - Ladder and Vine\n - Chorus Fruit and Chorus Plant\n","bold":true,"color":"dark_green"},{"text":"The other Blocks will tp you back to your last checkpoint.","color":"green"}]
execute as @a[tag=jar_config] run tag @s add jar_config_ok

#Give
replaceitem entity @a[tag=jar_config_ok] hotbar.0 minecraft:creeper_spawn_egg{CustomModelData:987,display:{Name:"{\"translate\":\"Start\",\"color\":\"gold\",\"bold\":true,\"italic\":false}",Lore:["If a Player steps on these Point the Jump and Run will start"]},EntityTag:{Tags:["jar_s_start"]}}
replaceitem entity @a[tag=jar_config_ok] hotbar.1 minecraft:mooshroom_spawn_egg{CustomModelData:987,display:{Name:"{\"translate\":\"End\",\"color\":\"gold\",\"bold\":true,\"italic\":false}",Lore:["The End of the Jump and Run"]},EntityTag:{Tags:["jar_s_ziel"]}}
replaceitem entity @a[tag=jar_config_ok] hotbar.2 minecraft:spider_spawn_egg{CustomModelData:987,display:{Name:"{\"translate\":\" Check Point\",\"color\":\"gold\",\"bold\":true,\"italic\":false}",Lore:["If the Player die he will tp back to the latest Check Point"]},EntityTag:{Tags:["jar_s_cpoint"]}}
replaceitem entity @a[tag=jar_config_ok] hotbar.6 minecraft:salmon_spawn_egg{CustomModelData:987,display:{Name:"{\"translate\":\"Reset\",\"color\":\"gold\",\"bold\":true,\"italic\":false}",Lore:["Resets all Settings"]},EntityTag:{Tags:["jar_s_kill"]}}
replaceitem entity @a[tag=jar_config_ok] hotbar.8 minecraft:tropical_fish_spawn_egg{CustomModelData:987,display:{Name:"{\"translate\":\"Leave Config\",\"color\":\"gold\",\"bold\":true,\"italic\":false}"},EntityTag:{Tags:["jar_s_leave"]}}

#Start
execute at @e[tag=jar_s_start] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,NoBasePlate:1b,Tags:["jar_e_start"],Invisible:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"Jump and Run Start\",\"color\":\"gold\",\"bold\":true}"}
execute at @e[tag=jar_s_start] run tellraw @p {"text":"Start placed","color":"dark_green","bold":true}
execute at @e[tag=jar_s_start] run scoreboard players add #cpointmax jar_cpoint 1
execute at @e[tag=jar_s_start] run scoreboard players operation @e[tag=jar_e_start,distance=..1,limit=1,sort=nearest] jar_cpoint = #cpointmax jar_cpoint
execute as @e[tag=jar_s_start] run tp @s ~ ~-1000 ~
execute as @e[tag=jar_s_start] run kill @s

#Ziel
execute at @e[tag=jar_s_ziel] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,NoBasePlate:1b,Tags:["jar_e_ziel"],Invisible:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"Jump and Run End\",\"color\":\"gold\",\"bold\":true}"}
execute at @e[tag=jar_s_ziel] run tellraw @p {"text":"End placed","color":"dark_green","bold":true}
execute as @e[tag=jar_s_ziel] run tp @s ~ ~-1000 ~
execute as @e[tag=jar_s_ziel] run kill @s

#Check Point
execute at @e[tag=jar_s_cpoint] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,NoBasePlate:1b,Tags:["jar_e_cpoint"],Invisible:1b}
execute at @e[tag=jar_s_cpoint] run tellraw @p {"text":"new Check Point placed","color":"dark_green","bold":true}
execute at @e[tag=jar_s_cpoint] run scoreboard players add #cpointmax jar_cpoint 1
execute at @e[tag=jar_s_cpoint] run scoreboard players operation @e[tag=jar_e_cpoint,distance=..1,limit=1,sort=nearest] jar_cpoint = #cpointmax jar_cpoint
execute as @e[tag=jar_s_cpoint] run tp @s ~ ~-1000 ~
execute as @e[tag=jar_s_cpoint] run kill @s

#Reset
execute at @e[tag=jar_s_kill] run kill @e[tag=jar_e_start]
execute at @e[tag=jar_s_kill] run kill @e[tag=jar_e_ziel]
execute at @e[tag=jar_s_kill] run kill @e[tag=jar_e_cpoint]
execute at @e[tag=jar_s_kill] run scoreboard players reset #cpointmax jar_cpoint
execute at @e[tag=jar_s_kill] run tellraw @p {"text":"Settings has been reseted","color":"dark_red","bold":true}
execute as @e[tag=jar_s_kill] run tp @s ~ ~-1000 ~
execute as @e[tag=jar_s_kill] run kill @s

#Leave
execute at @e[tag=jar_s_leave] run tag @p remove jar_config
execute at @e[tag=jar_s_leave] run tag @p remove jar_config_ok
execute at @e[tag=jar_s_leave] run clear @p
execute at @e[tag=jar_s_leave] run tellraw @p {"text":"You left the Config Mode","color":"dark_green","bold":true}
execute at @e[tag=jar_s_leave] run title @p actionbar {"text":"Config Mode is off","bold":true,"color":"dark_red"}
execute as @e[tag=jar_s_leave] run tp @s ~ ~-1000 ~
execute as @e[tag=jar_s_leave] run kill @s