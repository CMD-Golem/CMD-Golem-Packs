#portal setup
execute as @e[tag=gateway_point] at @s run function gateway:setup/detect

#link
execute as @a[scores={gateway_use=1..},nbt={SelectedItem:{tag:{gateway:"linker"}}}] at @s run function gateway:link/detect
execute as @a[scores={gateway_use=1..}] run scoreboard players reset @s gateway_use

#tp
execute at @e[tag=gateway_portal,tag=!gateway_unlinked] if entity @p[tag=!gateway_tp,distance=..1] as @e[tag=gateway_portal,tag=!gateway_unlinked] unless entity @s[distance=..2] if score @e[sort=nearest,limit=1] gateway = @s gateway at @p[tag=!gateway_tp,distance=..1] run function gateway:tp
execute 

execute as @a[tag=gateway_tp] at @s unless entity @e[tag=gateway_portal,distance=..1.2] run tag @s remove gateway_tp

#remove
execute as @e[tag=gateway_portal] at @s if block ~ ~-1 ~ #gateway:air run function gateway:remove

#mark unlinked gateway
execute at @e[tag=gateway_unlinked] if entity @p[distance=..8] run particle minecraft:falling_obsidian_tear ~ ~1.5 ~ 0.15 0.1 0.15 5 1

#Customization
execute unless score #custom gateway matches 1 as @e[tag=gateway_portal] at @s if entity @e[type=item,distance=..1,nbt=!{Item:{id:"minecraft:flint"}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:flint"}}] run function gateway:custom

#repair
execute unless score #damage gateway matches 1 as @e[type=item,nbt={Item:{tag:{gateway:"linker"}}}] at @s if block ~ ~-1 ~ #minecraft:anvil if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:ender_pearl"}}] run function gateway:damage/detect