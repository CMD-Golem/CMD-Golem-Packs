execute as @a[tag=chestlock_craft] at @s unless entity @e[type=item,nbt={Item:{id:"minecraft:gold_nugget"},Age:1s},distance=..3] run clear @s gold_nugget 1
execute at @a[tag=chestlock_craft] run kill @e[type=item,nbt={Item:{id:"minecraft:gold_nugget"},Age:1s},distance=..3]

give @a[tag=chestlock_craft] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Key","italic":false}',Lore:['{"text":"Shift right click a Chest to lock and open it","color":"gray","italic":false}']},CustomModelData:4268953,chestlock_item:1b} 1
scoreboard players remove @a[tag=chestlock_craft] chestlock_craft 1

execute as @a[tag=chestlock_craft,scores={chestlock_craft=1..}] run function chest_lock:craft/mass_craft

tag @a[tag=chestlock_craft] remove chestlock_craft