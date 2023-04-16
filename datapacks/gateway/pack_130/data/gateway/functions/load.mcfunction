scoreboard objectives add gateway dummy
scoreboard objectives add gateway_craft dummy
scoreboard objectives add gateway_use minecraft.used:minecraft.warped_fungus_on_a_stick

execute unless score #max gateway matches 1.. run scoreboard players set #max gateway 20