# 清除无效项
$execute store success score #temp NatureCraft.var run data remove storage pylons:main var.input.other[{id:$(id)}]
# 刷新计数器
data modify storage pylons:main bin append from storage pylons:main bin[0]
data remove storage pylons:main bin[0]

execute if score #temp NatureCraft.var matches 1 run function pylons:data/event/dialog/cleaning/count

data remove storage pylons:main var.input.bin[0]
execute store result score #temp NatureCraft.var run data get storage pylons:main var.input.bin
execute unless score #temp NatureCraft.var matches 0 run function pylons:data/event/dialog/cleaning/other with storage pylons:main var.input.bin[0]