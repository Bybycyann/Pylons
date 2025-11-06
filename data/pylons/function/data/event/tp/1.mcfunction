$data modify storage pylons:main var.input.x set from storage pylons:main players."$(UUID)".all[$(num)].pos[0]
$data modify storage pylons:main var.input.y set from storage pylons:main players."$(UUID)".all[$(num)].pos[1]
$data modify storage pylons:main var.input.z set from storage pylons:main players."$(UUID)".all[$(num)].pos[2]
$data modify storage pylons:main var.input.dimension set from storage pylons:main players."$(UUID)".all[$(num)].dimension

function pylons:data/event/tp/2 with storage pylons:main var.input