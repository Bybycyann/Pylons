data remove storage pylons:main var.input
data modify storage pylons:main var.input.count set from entity @s data.pylons.count
execute store result storage pylons:main var.input.id int 1 run scoreboard players get @s NatureCraft.uid

# 破坏
execute store result score #boole NatureCraft.var run function naturecraft:data/event/base/group/break3 with storage naturecraft:main const

# 回收站
execute if score #boole NatureCraft.var matches 1 unless predicate {\
    condition:"minecraft:value_check",value:{type:"minecraft:storage",storage:"pylons:main",path:"var.input.count"},range:0} \
run data modify storage pylons:main bin append from storage pylons:main var.input