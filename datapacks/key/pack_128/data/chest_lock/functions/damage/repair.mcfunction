kill @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:gold_ingot"}}]

#repair
scoreboard players remove @s chestlock_craft 25
execute if score @s chestlock_craft matches ..0 run scoreboard players set @s chestlock_craft 0
execute store result entity @s Item.tag.Damage int 1 run scoreboard players get @s chestlock_craft

#sound
playsound minecraft:block.anvil.use master @p