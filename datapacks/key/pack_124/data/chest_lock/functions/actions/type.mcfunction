#chest type right
execute if block ~ ~ ~ chest[type=right,facing=north] run tag @s add chestlock_right_north
execute if block ~ ~ ~ chest[type=right,facing=east] run tag @s add chestlock_right_east
execute if block ~ ~ ~ chest[type=right,facing=south] run tag @s add chestlock_right_south
execute if block ~ ~ ~ chest[type=right,facing=west] run tag @s add chestlock_right_west

#chest type left
execute if block ~ ~ ~ chest[type=left,facing=north] run tag @s add chestlock_left_north
execute if block ~ ~ ~ chest[type=left,facing=east] run tag @s add chestlock_left_east
execute if block ~ ~ ~ chest[type=left,facing=south] run tag @s add chestlock_left_south
execute if block ~ ~ ~ chest[type=left,facing=west] run tag @s add chestlock_left_west

#chest type signle
execute if block ~ ~ ~ chest[type=single,facing=north] run tag @s add chestlock_singel_north
execute if block ~ ~ ~ chest[type=single,facing=east] run tag @s add chestlock_singel_east
execute if block ~ ~ ~ chest[type=single,facing=south] run tag @s add chestlock_singel_south
execute if block ~ ~ ~ chest[type=single,facing=west] run tag @s add chestlock_singel_west