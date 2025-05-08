#> eotheal:_/heal/initiate
#--------------------
# _/tick AS [target]
#--------------------

execute unless score @s _eotheal.heal_amount matches 1.. run return run function eotheal:_/heal/end

effect give @s instant_health 1 28

execute store result score *x _eotheal run data get entity @s Health 10000
execute store result score *y _eotheal run attribute @s max_health get 10000
scoreboard players operation *x _eotheal += @s _eotheal.heal_amount
scoreboard players operation *x _eotheal -= *y _eotheal
execute store result storage eotheal:_ var.heal.max_mod float .0001 run scoreboard players get *y _eotheal

execute if score *x _eotheal matches ..-1 run function eotheal:_/heal/add_attribute with storage eotheal:_ var.heal