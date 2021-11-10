tag @e remove running
tag @s add running
tag @s add done
tag @e remove notpass
execute as @e[tag=trapcaster] if score @s ownedby = @e[tag=running,limit=1] ownedby if score @s cardid = @e[tag=running,limit=1] cardid run tag @s add notpass

execute unless entity @e[tag=pass] unless entity @e[tag=notpass] run tag @s add pass
execute unless entity @e[tag=pass] as @e[tag=!done,tag=category1,limit=1,sort=random] run function ingame:ma/shuangyuzuo2
tag @e remove notpass
tag @s remove running
tag @s remove done