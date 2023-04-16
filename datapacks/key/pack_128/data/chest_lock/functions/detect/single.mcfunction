#lock chest
execute unless block ~ ~ ~ chest{Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"} unless entity @e[tag=chestlock_unlocked,distance=..0.1] run function chest_lock:actions/lock
#not your chest
execute unless entity @e[tag=chestlock_new,distance=..0.1] unless score @s chestlock = @e[tag=chestlock_cloud,distance=..0.1,limit=1] chestlock run function chest_lock:actions/fail
#unlock chest
execute unless entity @e[tag=chestlock_new,distance=..0.1] if score @s chestlock = @e[tag=chestlock_cloud,distance=..0.1,limit=1] chestlock run function chest_lock:actions/unlock
#unlock with admin key
execute unless entity @e[tag=chestlock_new,distance=..0.1] if entity @s[nbt={SelectedItem:{tag:{chestlock_admin:1b}}}] unless score @s chestlock = @e[tag=chestlock_cloud,distance=..0.1,limit=1] chestlock run function chest_lock:actions/unlock



#reset
tag @e[tag=chestlock_new] remove chestlock_new