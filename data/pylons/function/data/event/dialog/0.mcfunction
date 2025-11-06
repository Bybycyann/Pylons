# 交互玩家标记
execute as @n[type=minecraft:interaction,tag=NatureCraft.interaction_box,tag=NatureCraft.target] on target run tag @s add NatureCraft.target

# 动态生成dialog
execute as @a[tag=NatureCraft.target,limit=1] unless items entity @s weapon.* *[custom_name,custom_data~{pylons:{}}] run return run function pylons:data/event/dialog/1 with entity @s

# 数据检查
data remove storage pylons:main var.input
execute store result storage pylons:main var.input.id int 1 run scoreboard players get @s NatureCraft.uid
execute as @a[tag=NatureCraft.target,limit=1] run function pylons:data/event/dialog/0-1
## rename
execute store result score #temp NatureCraft.var run function pylons:data/event/dialog/0-2 with storage pylons:main var.input
## add
execute if score #temp NatureCraft.var matches 0 run function pylons:data/event/dialog/0-3 with storage pylons:main var.input
# remove tag
tag @a[tag=NatureCraft.target,limit=1] remove NatureCraft.target