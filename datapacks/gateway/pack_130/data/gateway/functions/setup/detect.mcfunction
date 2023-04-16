execute if entity @e[tag=gateway_portal,distance=..2] run function gateway:setup/wrong

execute unless entity @e[tag=gateway_portal,distance=..2] run function gateway:setup/place

kill @s