execute store result score #temp NatureCraft.var run data get entity @s data.pylons.count
scoreboard players remove #temp NatureCraft.var 1
execute store result entity @s data.pylons.count int 1 run scoreboard players get #temp NatureCraft.var