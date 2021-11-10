tag @s add 123
execute as @e[tag=mascot,scores={usingcard=5}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if entity @e[tag=targetmascot] as @e[tag=character,tag=pickedtarget,tag=!dying,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass

execute if entity @e[tag=pass] run tag @s add potentialtrap
tag @e remove targetmascot
tag @e remove pass
tag @s remove 123