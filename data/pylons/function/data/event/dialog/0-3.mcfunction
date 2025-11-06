# 成就
execute as @n[type=minecraft:interaction,tag=NatureCraft.interaction_box,tag=NatureCraft.target] on target as @s[advancements={pylons:pylons/anchor=false}] run advancement grant @s only pylons:pylons/anchor

$data modify storage pylons:main players."$(UUID)".other prepend from entity @s data.pylons
$data modify storage pylons:main players."$(UUID)".other[0].name set from storage pylons:main var.input.name
$data modify storage pylons:main players."$(UUID)".all set from storage pylons:main players."$(UUID)".star
$data modify storage pylons:main players."$(UUID)".all append from storage pylons:main players."$(UUID)".other[]

# 激活计数
execute store result score #temp NatureCraft.var run data get entity @s data.pylons.count
scoreboard players add #temp NatureCraft.var 1
execute store result entity @s data.pylons.count int 1 run scoreboard players get #temp NatureCraft.var