# Every tick

execute as @a[gamemode=!spectator,tag=!dist_set] run function distancing:assign
function distancing:check_dimensions
execute as @a[gamemode=!spectator] at @s run function distancing:check_x
execute as @e[type=ender_pearl] run data modify entity @s Motion[0] set value 0.0d

execute as @a run function distancing:try_make_portal
forceload remove all
