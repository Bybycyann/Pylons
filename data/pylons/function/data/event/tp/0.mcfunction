# TP
execute store result storage pylons:main var.input.num int 1 run scoreboard players get @s Pylons.trigger_tp
data modify storage pylons:main var.input.UUID set from entity @s UUID
function pylons:data/event/tp/1 with storage pylons:main var.input
# 页面刷新
dialog clear @s
# 禁用触发器
trigger Pylons.trigger set 1