#chest type right
execute if entity @s[tag=chestlock_right_north] run setblock ~ ~ ~ chest[type=right,facing=north]{Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}
execute if entity @s[tag=chestlock_right_east] run setblock ~ ~ ~ chest[type=right,facing=east]{Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}
execute if entity @s[tag=chestlock_right_south] run setblock ~ ~ ~ chest[type=right,facing=south]{Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}
execute if entity @s[tag=chestlock_right_west] run setblock ~ ~ ~ chest[type=right,facing=west]{Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}

#chest type left
execute if entity @s[tag=chestlock_left_north] run setblock ~ ~ ~ chest[type=left,facing=north]{Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}
execute if entity @s[tag=chestlock_left_east] run setblock ~ ~ ~ chest[type=left,facing=east]{Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}
execute if entity @s[tag=chestlock_left_south] run setblock ~ ~ ~ chest[type=left,facing=south]{Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}
execute if entity @s[tag=chestlock_left_west] run setblock ~ ~ ~ chest[type=left,facing=west]{Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}

#chest type signle
execute if entity @s[tag=chestlock_singel_north] run setblock ~ ~ ~ chest[type=single,facing=north]{Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}
execute if entity @s[tag=chestlock_singel_east] run setblock ~ ~ ~ chest[type=single,facing=east]{Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}
execute if entity @s[tag=chestlock_singel_south] run setblock ~ ~ ~ chest[type=single,facing=south]{Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}
execute if entity @s[tag=chestlock_singel_west] run setblock ~ ~ ~ chest[type=single,facing=west]{Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}

execute unless entity @e[type=item,limit=1,sort=nearest,distance=..1,nbt={Item:{id:"minecraft:chest",Count:1b}}] run kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:chest"}}]
execute as @e[type=item,limit=1,sort=nearest,distance=..1,nbt={Item:{id:"minecraft:chest",Count:1b}}] run kill @s
