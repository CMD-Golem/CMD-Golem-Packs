execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:structure_void"},Age:1},distance=..3]

clear @s structure_void 1
give @s minecraft:item_frame{display:{Name:'{"text":"Invisible Item Frame","italic":false}'},EntityTag:{Invisible:1b,Tags:["item_frame_detect"]}}
scoreboard players remove @s item_frame 1

execute if entity @s[scores={item_frame=1..}] run function item_frame:craft/mass_craft