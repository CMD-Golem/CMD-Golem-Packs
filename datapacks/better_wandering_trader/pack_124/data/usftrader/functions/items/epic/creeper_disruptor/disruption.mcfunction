data merge entity @s {ExplosionRadius:-3b,Tags:["usftrader_creeper_mob"]}
particle minecraft:composter ~ ~1 ~ 0.2 0.5 0.2 1 50
execute at @p unless score #disruptor_sound usftrader matches 1 run playsound minecraft:entity.creeper.hurt master @p ~ ~ ~ 10 0