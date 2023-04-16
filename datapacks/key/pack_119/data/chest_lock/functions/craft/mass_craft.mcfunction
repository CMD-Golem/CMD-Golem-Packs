execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:gold_nugget"},Age:1},distance=..3]

clear @s gold_nugget 1
give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Key","italic":false}',Lore:['{"text":"Shift right click a Chest to lock and open it","color":"gray","italic":false}']},CustomModelData:4268953,chestlock_item:1b} 1
scoreboard players remove @s chestlock_craft 1

execute if entity @s[scores={chestlock_craft=1..}] run function chest_lock:craft/mass_craft