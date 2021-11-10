tag @s add 123
execute as @e[tag=minion] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add 234
execute as @e[tag=234] at @s if score @s recover matches 1.. run scoreboard players set @s rcvremoving 5
data merge entity @e[tag=endround,limit=1] {CustomName:"[{\"text\":\"回合结束\",\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}


execute unless entity @e[scores={recover=1..},tag=234] run scoreboard players set @s roundstarting 20
tag @e[tag=234] remove 234
tag @s remove 123
#检测如果没有在重整的随从
