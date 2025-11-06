# clear
execute if score #hand NatureCraft.var matches 0 run item modify entity @s weapon.offhand pylons:count_remove
execute if score #hand NatureCraft.var matches 1 run item modify entity @s weapon.mainhand pylons:count_remove