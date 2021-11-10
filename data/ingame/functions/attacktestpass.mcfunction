execute unless score @s hp matches 1.. run tag @s add fail_attack
execute unless score @s attack matches 1.. run tag @s add fail_attack
execute if score @s stun matches 1.. run tag @s add fail_attack
execute unless entity @s[tag=fail_attack] run scoreboard players add @s attacktime 1
tag @s remove fail_attack