## Begin Teleport from Origin
tp @s 0.0 0.0 0.0

## Teleport to Destination by Each Axis (positive/negative)
execute if score @s x.axis matches 1.. run function positive_x
execute if score @s y.axis matches 1.. run function positive_y
execute if score @s z.axis matches 1.. run function positive_z
execute if score @s x.axis matches ..-1 run function negative_x
execute if score @s y.axis matches ..-1 run function negative_y
execute if score @s z.axis matches ..-1 run function negative_z