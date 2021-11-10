tag @s add 123
execute as @e[tag=deck] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetdeck

execute unless score @s drawtime matches 1.. run scoreboard players set @s drawing 1
execute if score @s drawtime matches 1.. if score @s drawaddition matches ..-1 run scoreboard players set @s drawing 1




execute if score @s drawing matches 2.. run function ingame:testdrawcard2

tag @s remove 123
#execute as @e[tag=targetdeck] at @s run function ingame:setdeck

tag @e remove targetdeck
