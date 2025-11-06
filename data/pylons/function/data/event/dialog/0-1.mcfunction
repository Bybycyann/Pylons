## player.UUID
data modify storage pylons:main var.input.UUID set from entity @s UUID
## hand (0 offhand|1 mainhand)
execute if items entity @s weapon.offhand *[custom_name,custom_data~{pylons:{}}] run scoreboard players set #hand NatureCraft.var 0
execute if items entity @s weapon.mainhand *[custom_name,custom_data~{pylons:{}}] run scoreboard players set #hand NatureCraft.var 1
execute if score #hand NatureCraft.var matches 0 run data modify storage pylons:main var.input.name set from entity @s equipment.offhand.components."minecraft:custom_name"
execute if score #hand NatureCraft.var matches 1 run data modify storage pylons:main var.input.name set from entity @s SelectedItem.components."minecraft:custom_name"
execute if entity @s[gamemode=!creative] run function pylons:data/event/dialog/clear