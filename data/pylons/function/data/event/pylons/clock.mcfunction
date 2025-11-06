# 旋转与漂浮动画
execute as @n[type=minecraft:item_display,tag=NatureCraft.target,tag=Pylon] run function pylons:data/event/pylons/rotate/main

# status
execute on vehicle if score @s NatureCraft.status matches 10.. run return run scoreboard players set @s NatureCraft.status 10
execute on vehicle store result score #temp NatureCraft.var run scoreboard players add @s NatureCraft.status 2
function naturecraft:data/event/base/statusbar/0 with storage naturecraft:main const