summon minecraft:lightning_bolt
kill @s
#change to clear if it's raining or thundering
execute if predicate usftrader:weather run weather clear
#change to raining if it's clear
execute unless predicate usftrader:weather run weather rain