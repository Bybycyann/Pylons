data remove storage pylons:main var.input.star.star
$data remove storage pylons:main players."$(UUID)".star[$(star)]
$data modify storage pylons:main players."$(UUID)".other prepend from storage pylons:main var.input.star
data remove storage pylons:main var.input.star