#> eotheal : heal
# % AS [target]
#--------------------
# -> amount: float
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 1.
#--------------------

scoreboard players set *check_tick _eotheal 1
scoreboard players set @s _eotheal.healed 1

execute store result score *x _eotheal run data get storage eotheal:in heal.amount 10000
scoreboard players operation @s _eotheal.heal_amount += *x _eotheal

data remove storage eotheal:_ v.heal
data remove storage eotheal:in heal

return 1