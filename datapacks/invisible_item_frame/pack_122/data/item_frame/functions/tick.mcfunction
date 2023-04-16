#particle
execute at @e[type=minecraft:item_frame,nbt=!{Item:{Count:1b}},nbt={Invisible:1b,Facing:0b}] run particle minecraft:mycelium ~ ~ ~ 0.2 0 0.2 0 5 force
execute at @e[type=minecraft:item_frame,nbt=!{Item:{Count:1b}},nbt={Invisible:1b,Facing:1b}] run particle minecraft:mycelium ~ ~ ~ 0.2 0 0.2 0 5 force
execute at @e[type=minecraft:item_frame,nbt=!{Item:{Count:1b}},nbt={Invisible:1b,Facing:2b}] run particle minecraft:mycelium ~ ~ ~ 0.2 0.2 0 0 5 force
execute at @e[type=minecraft:item_frame,nbt=!{Item:{Count:1b}},nbt={Invisible:1b,Facing:3b}] run particle minecraft:mycelium ~ ~ ~ 0.2 0.2 0 0 5 force
execute at @e[type=minecraft:item_frame,nbt=!{Item:{Count:1b}},nbt={Invisible:1b,Facing:4b}] run particle minecraft:mycelium ~ ~ ~ 0 0.2 0.2 0 5 force
execute at @e[type=minecraft:item_frame,nbt=!{Item:{Count:1b}},nbt={Invisible:1b,Facing:5b}] run particle minecraft:mycelium ~ ~ ~ 0 0.2 0.2 0 5 force

#drop item
execute as @e[tag=item_frame_detect] at @s run function item_frame:setup

execute at @e[tag=item_frame_drop] unless entity @e[type=item_frame,distance=..0.1] as @e[type=item,nbt={Item:{id:"minecraft:item_frame"}},limit=1,sort=nearest] run data merge entity @s {Item:{tag:{display:{Name:'{"text":"Invisible Item Frame","italic":false}'},EntityTag:{Invisible:1b,Tags:["item_frame_detect"]}}}}
execute as @e[tag=item_frame_drop] at @s unless entity @e[type=item_frame,distance=..0.1] run kill @s