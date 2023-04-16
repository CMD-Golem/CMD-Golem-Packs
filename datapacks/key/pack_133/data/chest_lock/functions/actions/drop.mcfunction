summon chest_minecart ~ ~ ~ {Silent:1b,Tags:["chestlock_drop"]}
data modify entity @e[tag=chestlock_drop,sort=nearest,limit=1] Items set from block ~ ~ ~ Items
kill @e[tag=chestlock_drop,sort=nearest,limit=1]