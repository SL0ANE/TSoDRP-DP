execute as @e[tag=caster2,tag=classic,tag=9] at @s run function ingame:handcard/secondcasts/classic/9
execute as @e[tag=card,tag=classic,tag=14] at @s run function ingame:handcard/handcasts/classic/14-2
execute as @e[tag=caster2,tag=yuepunk,tag=6] at @s run function ingame:handcard/secondcasts/yuepunk/6-2
execute as @e[tag=caster2,tag=yuepunk,tag=9] at @s run function ingame:handcard/secondcasts/yuepunk/9-2
execute as @e[tag=caster2,tag=knights,tag=9] at @s run function ingame:handcard/secondcasts/knights/9-2
execute as @e[tag=caster2,tag=constellations,tag=6] at @s run function ingame:handcard/secondcasts/constellations/6-2
execute as @e[tag=caster2,tag=gods,tag=2] at @s run function ingame:handcard/secondcasts/gods/2-2
execute as @e[tag=modeleide,tag=minioncaster] run function ingame:ma/modeleide3
execute as @e[tag=jiahelisi,tag=minioncaster] run function ingame:ma/jiahelisi3
execute as @e[tag=!mute,tag=shenhaikongjvliweitan,scores={recover=-1}] at @s run function ingame:ma/shenhaikongjvliweitan
execute as @e[tag=!mute,tag=asimode,scores={recover=-1}] at @s run function ingame:ma/asimode
execute as @e[tag=!mute,tag=jielante,scores={recover=-1}] at @s run function ingame:ma/jielante
execute as @e[tag=!mute,tag=baosi,scores={recover=-1}] at @s run function ingame:ma/baosi2
execute as @e[tag=!mute,tag=modeleide,scores={recover=-1}] at @s run function ingame:ma/modeleide2
execute as @e[tag=!mute,tag=jinniuzuo,scores={recover=-1}] at @s run function ingame:ma/jinniuzuo
execute as @e[tag=!mute,tag=shuangzizuo,scores={recover=-1}] at @s run function ingame:ma/shuangzizuo2
execute as @e[tag=!mute,tag=tianchengzuo,scores={recover=-1}] at @s run function ingame:ma/tianchengzuo2
execute as @e[tag=!mute,tag=gaowen,scores={recover=-1}] at @s run function ingame:ma/gaowen2






#从这里往上是无条件型光环效果
#从这里往上是无条件型光环效果
#从这里往上是无条件型光环效果
execute as @e[tag=minion] run scoreboard players set @s attack 0
execute as @e[tag=mascot] run scoreboard players set @s attack 0
#execute as @e[tag=mascot] run scoreboard players set @s damage 0
#execute as @e[tag=mascot] run scoreboard players operation @s damage += @s truedamage
#execute as @e[tag=mascot] run scoreboard players operation @s damage += @s halodamage
#execute as @e[tag=mascot] run scoreboard players set @s[scores={damage=..-1}] damage 0
#这个暂时不需要

execute as @e[tag=minion] run scoreboard players operation @s attack += @s trueattack
execute as @e[tag=minion] run scoreboard players operation @s attack += @s haloattack
execute as @e[tag=mascot] run scoreboard players operation @s attack += @s trueattack
execute as @e[tag=mascot] run scoreboard players operation @s attack += @s haloattack



tag @e[tag=caster2,tag=a_halo] add activatedhalo
tag @e[tag=minion,tag=a_halo,tag=!mute] add activatedhalo
execute store result score runcount system if entity @e[tag=activatedhalo]
execute if score runcount system matches 1.. run function ingame:halos2
#halo2 是有条件型光环效果

#例：“本回合内，己方随从拥有+2攻击力” 或者 “己方随从拥有【玄惑】” 的光环属于无条件型光环，这些光环只管执行，无需考虑先后顺序
#例：“攻击力大于等于5的己方随从拥有【暴走】” 或者 “你的回合外，己方随从拥有【魔免】” 的光环属于有条件型光环，在结合无条件型光环的输出结果后反复循环以使所有光环完成执行

execute as @e[tag=minion] run scoreboard players set @s attack 0
execute as @e[tag=mascot] run scoreboard players set @s attack 0
execute as @e[tag=minion] run scoreboard players operation @s attack += @s trueattack
execute as @e[tag=minion] run scoreboard players operation @s attack += @s haloattack
execute as @e[tag=mascot] run scoreboard players operation @s attack += @s trueattack
execute as @e[tag=mascot] run scoreboard players operation @s attack += @s haloattack


execute as @e[tag=mascot] run scoreboard players set @s damage 0
execute as @e[tag=mascot] run scoreboard players operation @s damage += @s truedamage
execute as @e[tag=mascot] run scoreboard players operation @s damage += @s halodamage
execute as @e[tag=mascot] run scoreboard players set @s[scores={damage=..-1}] damage 0

execute as @e[tag=card,scores={handorder=1..}] run scoreboard players set @s cost 0
execute as @e[tag=card,scores={handorder=1..}] run scoreboard players operation @s cost += @s truecost
execute as @e[tag=card,scores={handorder=1..}] run scoreboard players operation @s cost += @s halocost
execute as @e[tag=card,scores={handorder=1..}] run scoreboard players set @s[scores={cost=..-1}] cost 0

execute as @e[tag=card,scores={handorder=1..}] run scoreboard players set @s hpcost 0
execute as @e[tag=card,scores={handorder=1..}] run scoreboard players operation @s hpcost += @s truehpcost
execute as @e[tag=card,scores={handorder=1..}] run scoreboard players operation @s hpcost += @s halohpcost
execute as @e[tag=card,scores={handorder=1..}] run scoreboard players set @s[scores={hpcost=..-1}] hpcost 0


execute as @e[tag=minion] run scoreboard players set @s cost 0
execute as @e[tag=minion] run scoreboard players operation @s cost += @s truecost
execute as @e[tag=minion] run scoreboard players operation @s cost += @s halocost
execute as @e[tag=minion] run scoreboard players set @s[scores={cost=..-1}] cost 0





tag @e remove activatedhalo

tag @e remove affected_dragon4
tag @e remove affected_paxiweier
tag @e remove affected_jielante
tag @e remove affected_jiahelisi
tag @e remove affected_asimode