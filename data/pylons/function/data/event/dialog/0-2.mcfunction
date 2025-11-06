$execute unless data storage pylons:main players."$(UUID)"{all:[{id:$(id)}]} run return 0
$data modify storage pylons:main players."$(UUID)"{all:[{id:$(id)}]}.all[{id:$(id)}].name set from storage pylons:main var.input.name
$data modify storage pylons:main players."$(UUID)"{other:[{id:$(id)}]}.other[{id:$(id)}].name set from storage pylons:main var.input.name
$data modify storage pylons:main players."$(UUID)"{star:[{id:$(id)}]}.star[{id:$(id)}].name set from storage pylons:main var.input.name
return 1