summon minecraft:lightning_bolt
kill @s
#detect time
execute store result score #toggle_day_time usftrader_store run time query daytime
#change to night if it's day
execute if score #toggle_day_time usftrader_store matches 0..13000 run time set night
#change to day if it's night
execute if score #toggle_day_time usftrader_store matches 13001..23999 run time set day