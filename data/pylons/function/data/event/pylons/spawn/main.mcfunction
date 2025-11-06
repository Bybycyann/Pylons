# 放置声音
function naturecraft:data/event/base/sound with storage naturecraft:main const

# 附加部件--悬浮水晶
summon minecraft:item_display ~ ~ ~ {Tags:["NatureCraft.target","Pylon","rotate0"],\
    item:{id:"minecraft:paper","components":{"minecraft:item_model":"pylons:pylons"}},transformation:{left_rotation:[1,0,0,0],right_rotation:[-0.33,0,0.33,0.89],scale:[0.6,0.8,0.6],translation:[0,1.3,0]},interpolation_duration:40}
data modify entity @e[tag=rotate0,tag=Pylon,tag=NatureCraft.target,distance=..1,limit=1] item.components."minecraft:dyed_color" set from storage naturecraft:main const.color

# uid绑定
scoreboard players operation @e[tag=NatureCraft.target,distance=..1] NatureCraft.uid = @s NatureCraft.uid

# status初始化
execute on vehicle run scoreboard players set @s NatureCraft.status 10

# 数据补充
execute store result entity @s data.pylons.id int 1 run scoreboard players get @s NatureCraft.uid
data modify entity @s data.pylons.dimension set from entity @a[tag=NatureCraft.target,sort=nearest,limit=1] Dimension
data modify entity @s data.pylons.pos set from entity @s Pos
data modify entity @s data.pylons.count set value 0