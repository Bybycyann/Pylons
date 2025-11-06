# 创建dialog选项
$data modify storage pylons:main var.1 set value \
[\
    {width:250,action: {type:"run_command",command:"/trigger Pylons.trigger_tp set $(i)"}},\
    {label: {"text":"☆"},width:20,action: {type:"run_command",command:"/trigger Pylons.trigger_star set $(i)"}},\
    {label: {"text":"🗑"},width:20,action: {type:"run_command",command:"/trigger Pylons.trigger_del set $(i)"}}\
]
data modify storage pylons:main var.1[0].label set from storage pylons:main var.0[0].name
execute if data storage pylons:main var.0[0].star run data modify storage pylons:main var.1[1].label set value {"text":"★","color":"yellow"}
data remove storage pylons:main var.0[0]
# 循环变量
scoreboard players remove #j NatureCraft.var 1
# 输出actions
data modify storage pylons:main var.output append from storage pylons:main var.1[]
# 创建dialog >>>
execute if score #j NatureCraft.var matches ..0 run return run function pylons:data/event/dialog/3 with storage pylons:main var
# 指针变量
scoreboard players add #i NatureCraft.var 1
execute store result storage pylons:main var.i int 1 run scoreboard players get #i NatureCraft.var
# 循环
function pylons:data/event/dialog/2 with storage pylons:main var