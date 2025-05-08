#> eotheal:_/heal/end
#--------------------
# _ {} effect_applied
# ./initiate
#- AS [target]
#--------------------

attribute @s max_health modifier remove eotheal:heal

scoreboard players reset @s _eotheal.heal_amount
scoreboard players reset @s _eotheal.healed