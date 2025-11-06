$execute in $(dimension) run tp @s $(x) $(y) $(z)

# 提示
tellraw @s {"translate": "","fallback": "传送成功!","color": "yellow"}
execute at @s run playsound minecraft:entity.ender_eye.death player @s
execute at @s positioned ~ ~1.1 ~ run particle minecraft:enchant ~ ~ ~ 0.35 0.6 0.35 0.1 100 force