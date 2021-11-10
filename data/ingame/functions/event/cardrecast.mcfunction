
scoreboard players set @s[scores={cardcasttime=1..}] cardcasting 40
execute if score @s cardcasttime matches 1.. run tag @e remove cardtarget
execute if score @s cardcasttime matches 1.. run tag @e[tag=pickedtarget] add cardtarget
scoreboard players remove @s[scores={cardcasttime=1..}] cardcasttime 1
