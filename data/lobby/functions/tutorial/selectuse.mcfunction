tag @s add selector


execute as @e[tag=t_card,scores={handorder=1..}] if score @s ownedby = @a[tag=selector,limit=1] playernumber run tag @s add category1


execute as @e[tag=category1] if score @s handorder = @a[tag=selector,limit=1] hoverhotbar run tag @s add selectedcard


#execute unless entity @e[tag=selectedcard] as @e[tag=category1] if score @s handorder = @e[tag=targetmascot,limit=1] handcardcount run tag @s add selectedcard

tag @e remove category1
