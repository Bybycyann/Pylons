$data modify storage pylons:main var.input.star set from storage pylons:main players."$(UUID)".all[$(num)]
execute if data storage pylons:main var.input.star{star:1b} run function pylons:data/event/star/remove with storage pylons:main var.input
execute if data storage pylons:main var.input.star run function pylons:data/event/star/add with storage pylons:main var.input

$data modify storage pylons:main players."$(UUID)".all set from storage pylons:main players."$(UUID)".star
$data modify storage pylons:main players."$(UUID)".all append from storage pylons:main players."$(UUID)".other[]