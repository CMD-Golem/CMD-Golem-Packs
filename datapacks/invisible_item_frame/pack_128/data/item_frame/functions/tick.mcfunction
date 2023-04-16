#particle
execute as @e[type=item_frame] run function item_frame:particle
execute as @e[type=glow_item_frame] run function item_frame:particle

#drop item
execute as @e[tag=item_frame_detect] at @s run function item_frame:setup

execute at @e[tag=item_frame_drop] unless entity @e[type=item_frame,distance=..0.1] as @e[type=item,nbt={Item:{id:"minecraft:item_frame"}},limit=1,sort=nearest] run data merge entity @s {Item:{tag:{display:{Name:'{"text":"Invisible Item Frame","italic":false}'},EntityTag:{Invisible:1b,Tags:["item_frame_detect"]}}}}
execute as @e[tag=item_frame_drop] at @s unless entity @e[type=item_frame,distance=..0.1] run kill @s

#drop item glow
execute as @e[tag=glow_item_frame_detect] at @s run function item_frame:setup_glow

execute at @e[tag=glow_item_frame_drop] unless entity @e[type=glow_item_frame,distance=..0.1] as @e[type=item,nbt={Item:{id:"minecraft:glow_item_frame"}},limit=1,sort=nearest] run data merge entity @s {Item:{tag:{display:{Name:'{"text":"Invisible Glow Item Frame","italic":false}'},EntityTag:{Invisible:1b,Tags:["glow_item_frame_detect"]}}}}
execute as @e[tag=glow_item_frame_drop] at @s unless entity @e[type=glow_item_frame,distance=..0.1] run kill @s