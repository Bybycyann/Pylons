# DEL
execute store result storage pylons:main var.input.num int 1 run scoreboard players get @s Pylons.trigger_del
data modify storage pylons:main var.input.UUID set from entity @s UUID
function pylons:data/event/del/1 with storage pylons:main var.input
# 页面刷新
dialog clear @s
function pylons:data/event/dialog/1 with entity @s
# 重置触发器
function pylons:trigger/del