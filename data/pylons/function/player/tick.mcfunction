# 进入游戏
execute if score @s Pylons.leave_game matches 0.. run function pylons:player/play_game/0
# 禁用触发器
execute if score @s Pylons.trigger matches 1 run function pylons:trigger/disable
# TP
execute if score @s Pylons.trigger_tp matches 0.. run function pylons:data/event/tp/0
# DEL
execute if score @s Pylons.trigger_del matches 0.. run function pylons:data/event/del/0
# STAR
execute if score @s Pylons.trigger_star matches 0.. run function pylons:data/event/star/0