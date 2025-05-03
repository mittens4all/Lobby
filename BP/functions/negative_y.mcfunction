execute at @s run tp @s[scores={y.axis=..-64}] ~~-64~
scoreboard players add @s[scores={y.axis=..-64}] y.axis 64

execute at @s run tp @s[scores={y.axis=..-32}] ~~-32~
scoreboard players add @s[scores={y.axis=..-32}] y.axis 32

execute at @s run tp @s[scores={y.axis=..-16}] ~~-16~
scoreboard players add @s[scores={y.axis=..-16}] y.axis 16

execute at @s run tp @s[scores={y.axis=..-8}] ~~-8~
scoreboard players add @s[scores={y.axis=..-8}] y.axis 8

execute at @s run tp @s[scores={y.axis=..-4}] ~~-4~
scoreboard players add @s[scores={y.axis=..-4}] y.axis 4

execute at @s run tp @s[scores={y.axis=..-2}] ~~-2~
scoreboard players add @s[scores={y.axis=..-2}] y.axis 2

execute at @s run tp @s[scores={y.axis=..-1}] ~~-1~
scoreboard players add @s[scores={y.axis=..-1}] y.axis 1

execute if score @s y.axis matches ..-1 run function negative_y