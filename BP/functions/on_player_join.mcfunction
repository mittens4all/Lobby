## Register Players to 'joined' Objective Who Joined For First Time or Were Cleared from 'joined' Previously
scoreboard players add @a joined 0

## Your Commands Here (Example)
tp @a[scores={joined=0}] 8 -60 8

### Mark Players as Joined
### Clear 'joined' score of online and offline players
scoreboard players reset * joined
### Set online players score to 1
scoreboard players set @a joined 1