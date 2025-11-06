$data modify storage pylons:main var.input.del set from storage pylons:main players."$(UUID)".all[$(num)]
$data modify storage pylons:main var.input.id set from storage pylons:main players."$(UUID)".all[$(num)].id
$data remove storage pylons:main players."$(UUID)".all[$(num)]
function pylons:data/event/del/2 with storage pylons:main var.input