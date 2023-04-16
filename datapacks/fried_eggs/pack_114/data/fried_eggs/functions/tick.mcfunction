execute as @e[type=item,nbt={Item:{id:"minecraft:jigsaw"}}] run data merge entity @s {Item:{id:"minecraft:cookie",Count:1b,tag:{display:{Name:"{\"text\":\"Fried Egg\",\"italic\":false}"},CustomModelData:4553473}}}

#recipe
execute as @a[tag=!fried_egg,nbt={Inventory:[{id:"minecraft:egg"}]}] run function fried_eggs:recipe

#Inventory
execute as @a[nbt={Inventory:[{id:"minecraft:jigsaw"}]}] run function fried_eggs:inventory
