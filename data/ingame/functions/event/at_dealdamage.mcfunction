



scoreboard players operation @e[tag=at_dmgto] at_dmgtaken += @s dmgdeal
scoreboard players set @s dmgdealing 7



particle minecraft:block lapis_block ~ ~ ~ 0.3 0.3 0.3 0 30 force

#这个function 先将攻击目标视为受到攻击伤害的目标，然后令其执行受伤事件