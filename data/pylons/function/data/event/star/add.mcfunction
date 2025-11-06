data modify storage pylons:main var.input.star.star set value 1b
$data remove storage pylons:main players."$(UUID)".other[$(star)]
$data modify storage pylons:main players."$(UUID)".star prepend from storage pylons:main var.input.star