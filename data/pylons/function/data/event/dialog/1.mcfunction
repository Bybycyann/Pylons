data remove storage pylons:main var
data modify storage pylons:main var.output set value []
data modify storage pylons:main var.0 set value []
# 启用 trigger
function pylons:trigger/enable
# 清洗列表
$data modify storage pylons:main var.input.star set from storage pylons:main players."$(UUID)".star
$data modify storage pylons:main var.input.other set from storage pylons:main players."$(UUID)".other
data modify storage pylons:main var.input.bin set from storage pylons:main bin
function pylons:data/event/dialog/cleaning/star with storage pylons:main var.input.bin[0]
data modify storage pylons:main var.input.bin set from storage pylons:main bin
function pylons:data/event/dialog/cleaning/other with storage pylons:main var.input.bin[0]
$data modify storage pylons:main players."$(UUID)".star set from storage pylons:main var.input.star
$data modify storage pylons:main players."$(UUID)".other set from storage pylons:main var.input.other
data modify storage pylons:main var.0 append from storage pylons:main var.input.star[]
data modify storage pylons:main var.0 append from storage pylons:main var.input.other[]
$data modify storage pylons:main players."$(UUID)".all set from storage pylons:main var.0
# 指针变量
scoreboard players set #i NatureCraft.var 0
execute store result storage pylons:main var.i int 1 run scoreboard players get #i NatureCraft.var
# 循环变量
execute store result score #j NatureCraft.var run data get storage pylons:main var.0
function pylons:data/event/dialog/2 with storage pylons:main var
# remove tag
tag @a[tag=NatureCraft.target,limit=1] remove NatureCraft.target