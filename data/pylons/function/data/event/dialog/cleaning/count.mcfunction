execute store result score #temp2 NatureCraft.var run data get storage pylons:main var.input.bin[0].count
scoreboard players remove #temp2 NatureCraft.var 1
execute store result storage pylons:main bin[-1].count int 1 run scoreboard players get #temp2 NatureCraft.var
execute if score #temp2 NatureCraft.var matches 0 run data remove storage pylons:main bin[-1]