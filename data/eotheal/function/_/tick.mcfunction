#> eotheal:_/tick
#--------------------
# @TICK
#--------------------
schedule function eotheal:_/tick 1t

execute if score *check_tick _eotheal matches 1 as @a[scores={_eotheal.healed=1}] run function eotheal:_/heal/initiate

scoreboard players reset *check_tick _eotheal