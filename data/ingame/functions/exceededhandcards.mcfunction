tag @s add 123
execute as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s handorder > @e[tag=targetmascot,limit=1] handcardlimit run function ingame:extractdeck

tag @e remove targetmascot
tag @s remove 123