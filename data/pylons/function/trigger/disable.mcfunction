dialog clear @s
function pylons:trigger/enable
scoreboard players reset @s Pylons.trigger
scoreboard players set @s Pylons.trigger -1
scoreboard players reset @s Pylons.trigger_tp
scoreboard players set @s Pylons.trigger_tp -1
scoreboard players reset @s Pylons.trigger_del
scoreboard players set @s Pylons.trigger_del -1
scoreboard players reset @s Pylons.trigger_star
scoreboard players set @s Pylons.trigger_del -1