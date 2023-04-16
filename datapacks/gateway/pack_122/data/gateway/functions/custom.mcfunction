kill @e[type=item,nbt={Item:{id:"minecraft:flint"}}]
execute as @e[tag=gateway_portal] at @s run data modify entity @s ArmorItems[3] set from entity @e[type=item,distance=..1,limit=1] Item