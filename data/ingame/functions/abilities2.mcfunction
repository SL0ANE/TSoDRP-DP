execute as @e[tag=minion,tag=mute,scores={casting2=1..}] run tag @s add end_ability2
#execute as @e[tag=minion,tag=casted,scores={casting2=1..}] run tag @s add end_ability2
#casted表示本局技能释放次数达到上限
#execute as @e[tag=minion,tag=casted2,scores={casting2=1..}] run tag @s add end_ability2
#casted2表示本回合技能释放次数达到上限，回合结束后重置
execute as @e[tag=minion,tag=end_ability2] run function ingame:event/casted2


execute unless score casting2 pause matches 1.. as @e[tag=yinhua,scores={casting2=6..19}] at @s run function ingame:ma/yinhua
execute unless score casting2 pause matches 1.. as @e[tag=beideweier,scores={casting2=6..19}] at @s run function ingame:ma/beideweier
execute unless score casting2 pause matches 1.. as @e[tag=jialeisi,scores={casting2=6..19}] at @s run function ingame:ma/jialeisi
execute unless score casting2 pause matches 1.. as @e[tag=dagenite,scores={casting2=6..19}] at @s run function ingame:ma/dagenite2
execute unless score casting2 pause matches 1.. as @e[tag=baosi,scores={casting2=6..19}] at @s run function ingame:ma/baosi
execute unless score casting2 pause matches 1.. as @e[tag=yase,scores={casting2=6..19}] at @s run function ingame:ma/yase
execute unless score casting2 pause matches 1.. as @e[tag=jiahelisi,scores={casting2=6..19}] at @s run function ingame:ma/jiahelisi
execute unless score casting2 pause matches 1.. as @e[tag=samaier,scores={casting2=6..19}] at @s run function ingame:ma/samaier
execute unless score casting2 pause matches 1.. as @e[tag=maidezhanshi,scores={casting2=6..19}] at @s run function ingame:ma/maidezhanshi
execute unless score casting2 pause matches 1.. as @e[tag=mijiale,scores={casting2=6..19}] at @s run function ingame:ma/mijiale
execute unless score casting2 pause matches 1.. as @e[tag=baiyangzuo,scores={casting2=6..19}] at @s run function ingame:ma/baiyangzuo


tag @e remove end_ability2