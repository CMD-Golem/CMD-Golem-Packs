kill @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:ender_pearl"}}]

#repair
scoreboard players remove @s gateway_craft 25
execute if score @s gateway_craft matches ..0 run scoreboard players set @s gateway_craft 0
execute store result entity @s Item.tag.Damage int 1 run scoreboard players get @s gateway_craft

#sound
playsound minecraft:block.anvil.use master @p