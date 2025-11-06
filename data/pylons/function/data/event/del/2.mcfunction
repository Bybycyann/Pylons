$data remove storage pylons:main players."$(UUID)".star[$(del)]
$data remove storage pylons:main players."$(UUID)".other[$(del)]
$execute as @n[type=minecraft:marker,tag=NatureCraft.data,scores={NatureCraft.uid=$(id)}] run function pylons:data/event/del/3