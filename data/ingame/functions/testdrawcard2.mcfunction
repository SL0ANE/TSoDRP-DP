tag @s add 555





execute as @e[tag=card,scores={cardorder=1..}] if score @s ownedby = @e[tag=555,limit=1] ownedby run tag @s add 222


execute store result score @e[tag=555] deckcount if entity @e[tag=222]
execute unless entity @e[tag=card,scores={cardorder=1},tag=222] run function ingame:sortdeck
execute if score @s deckcount matches ..0 run tag @s add faildraw

execute if score @s handcardcount < @s handcardlimit if entity @e[tag=card,scores={cardorder=1},tag=222] run tag @s add candraw

execute if score @s handcardcount >= @s handcardlimit if entity @e[tag=card,scores={cardorder=1},tag=222] run tag @s add cantdraw

execute as @s[tag=faildraw] run function ingame:faildraw
execute as @s[tag=candraw] run function ingame:drawcard
execute as @s[tag=cantdraw] run function ingame:cantdrawcard
tag @s remove faildraw
tag @s remove cantdraw
tag @s remove candraw
tag @e remove 222
tag @s remove 555
execute if score @s drawaddition matches 1.. run function ingame:drawagain


