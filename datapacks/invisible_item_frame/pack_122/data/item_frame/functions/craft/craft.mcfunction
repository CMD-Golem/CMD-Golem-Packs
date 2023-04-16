execute as @a[tag=itemframe_craft] at @s unless entity @e[type=item,nbt={Item:{id:"minecraft:structure_void"},Age:1s},distance=..3] run clear @s structure_void 1
execute at @a[tag=itemframe_craft] run kill @e[type=item,nbt={Item:{id:"minecraft:structure_void"},Age:1s},distance=..3]

give @a[tag=itemframe_craft] minecraft:item_frame{display:{Name:'{"text":"Invisible Item Frame","italic":false}'},EntityTag:{Invisible:1b,Tags:["item_frame_detect"]}}
scoreboard players remove @a[tag=itemframe_craft] item_frame 1

execute as @a[tag=itemframe_craft,scores={item_frame=1..}] run function item_frame:craft/mass_craft

tag @a[tag=itemframe_craft] remove itemframe_craft