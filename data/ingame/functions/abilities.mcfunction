execute as @e[tag=minion,tag=mute,scores={casting=1..}] run tag @s add end_ability1
#execute as @e[tag=minion,tag=casted,scores={casting=1..}] run tag @s add end_ability1
#casted表示本局技能释放次数达到上限
#execute as @e[tag=minion,tag=casted2,scores={casting=1..}] run tag @s add end_ability1
#casted2表示本回合技能释放次数达到上限，回合结束后重置
execute as @e[tag=minion,tag=end_ability1] run function ingame:event/casted


execute unless score casting pause matches 1.. as @e[tag=akai,scores={casting=6..19}] at @s run function ingame:ma/akai
execute unless score casting pause matches 1.. as @e[tag=shicheng,scores={casting=6..19}] at @s run function ingame:ma/shicheng
execute unless score casting pause matches 1.. as @e[tag=jinghe,scores={casting=6..19}] at @s run function ingame:ma/jinghe
execute unless score casting pause matches 1.. as @e[tag=nie,scores={casting=6..19}] at @s run function ingame:ma/nie
execute unless score casting pause matches 1.. as @e[tag=yeying,scores={casting=6..19}] at @s run function ingame:ma/yeying
execute unless score casting pause matches 1.. as @e[tag=laoma,scores={casting=6..19}] at @s run function ingame:ma/laoma
execute unless score casting pause matches 1.. as @e[tag=hongwu,scores={casting=6..19}] at @s run function ingame:ma/hongwu


execute unless score casting pause matches 1.. as @e[tag=kai,scores={casting=6..19}] at @s run function ingame:ma/kai
execute unless score casting pause matches 1.. as @e[tag=lanmaluoke,scores={casting=6..19}] at @s run function ingame:ma/lanmaluoke
execute unless score casting pause matches 1.. as @e[tag=lansiluote,scores={casting=6..19}] at @s run function ingame:ma/lansiluote
execute unless score casting pause matches 1.. as @e[tag=jialahade,scores={casting=6..19}] at @s run function ingame:ma/jialahade
execute unless score casting pause matches 1.. as @e[tag=telisitan,scores={casting=6..19}] at @s run function ingame:ma/telisitan
execute unless score casting pause matches 1.. as @e[tag=gaowen,scores={casting=6..19}] at @s run function ingame:ma/gaowen
execute unless score casting pause matches 1.. as @e[tag=dagenite,scores={casting=6..19}] at @s run function ingame:ma/dagenite
execute unless score casting pause matches 1.. as @e[tag=jielante,scores={casting=6..19}] at @s run function ingame:ma/jielante2
execute unless score casting pause matches 1.. as @e[tag=modeleide,scores={casting=6..19}] at @s run function ingame:ma/modeleide
execute unless score casting pause matches 1.. as @e[tag=aikete,scores={casting=6..19}] at @s run function ingame:ma/aikete

execute unless score casting pause matches 1.. as @e[tag=sheshouzuo,scores={casting=6..19}] at @s run function ingame:ma/sheshouzuo
execute unless score casting pause matches 1.. as @e[tag=mojiezuo,scores={casting=6..19}] at @s run function ingame:ma/mojiezuo
execute unless score casting pause matches 1.. as @e[tag=shizizuo,scores={casting=6..19}] at @s run function ingame:ma/shizizuo
execute unless score casting pause matches 1.. as @e[tag=shuangzizuo,scores={casting=6..19}] at @s run function ingame:ma/shuangzizuo
execute unless score casting pause matches 1.. as @e[tag=shuipingzuo,scores={casting=6..19}] at @s run function ingame:ma/shuipingzuo
execute unless score casting pause matches 1.. as @e[tag=shuangyuzuo,scores={casting=6..19}] at @s run function ingame:ma/shuangyuzuo
execute unless score casting pause matches 1.. as @e[tag=jvxiezuo,scores={casting=6..19}] at @s run function ingame:ma/jvxiezuo
execute unless score casting pause matches 1.. as @e[tag=chunvzuo,scores={casting=6..19}] at @s run function ingame:ma/chunvzuo
execute unless score casting pause matches 1.. as @e[tag=tianxiezuo,scores={casting=6..19}] at @s run function ingame:ma/tianxiezuo
execute unless score casting pause matches 1.. as @e[tag=tianchengzuo,scores={casting=6..19}] at @s run function ingame:ma/tianchengzuo



execute unless score casting pause matches 1.. as @e[tag=aisha,scores={casting=6..19}] at @s run function ingame:ma/aisha
execute unless score casting pause matches 1.. as @e[tag=bingfengleisai,scores={casting=6..19}] at @s run function ingame:ma/bingfengleisai
execute unless score casting pause matches 1.. as @e[tag=yuansushi,scores={casting=6..19}] at @s run function ingame:ma/yuansushi
execute unless score casting pause matches 1.. as @e[tag=xiehunsan,scores={casting=6..19}] at @s run function ingame:ma/xiehunsan
execute unless score casting pause matches 1.. as @e[tag=huoyanxingzhe,scores={casting=6..19}] at @s run function ingame:ma/huoyanxingzhe
execute unless score casting pause matches 1.. as @e[tag=tudouqinwang,scores={casting=6..19}] at @s run function ingame:ma/tudouqinwang
execute unless score casting pause matches 1.. as @e[tag=tameila,scores={casting=6..19}] at @s run function ingame:ma/tameila
execute unless score casting pause matches 1.. as @e[tag=housailei,scores={casting=6..19}] at @s run function ingame:ma/housailei
execute unless score casting pause matches 1.. as @e[tag=heijieke,scores={casting=6..19}] at @s run function ingame:ma/heijieke
execute unless score casting pause matches 1.. as @e[tag=xieyunjuan,scores={casting=6..19}] at @s run function ingame:ma/xieyunjuan

execute unless score casting pause matches 1.. as @e[tag=luxifa,scores={casting=6..19}] at @s run function ingame:ma/luxifa
execute unless score casting pause matches 1.. as @e[tag=mowangluxifa,scores={casting=6..19}] at @s run function ingame:ma/mowangluxifa
execute unless score casting pause matches 1.. as @e[tag=liweitan,scores={casting=6..19}] at @s run function ingame:ma/liweitan
execute unless score casting pause matches 1.. as @e[tag=beierfenge,scores={casting=6..19}] at @s run function ingame:ma/beierfenge
execute unless score casting pause matches 1.. as @e[tag=mamen,scores={casting=6..19}] at @s run function ingame:ma/mamen
execute unless score casting pause matches 1.. as @e[tag=biexibu,scores={casting=6..19}] at @s run function ingame:ma/biexibu
execute unless score casting pause matches 1.. as @e[tag=jiabailie,scores={casting=6..19}] at @s run function ingame:ma/jiabailie
execute unless score casting pause matches 1.. as @e[tag=wulie,scores={casting=6..19}] at @s run function ingame:ma/wulie
execute unless score casting pause matches 1.. as @e[tag=lafeier,scores={casting=6..19}] at @s run function ingame:ma/lafeier
execute unless score casting pause matches 1.. as @e[tag=laguier,scores={casting=6..19}] at @s run function ingame:ma/laguier
execute unless score casting pause matches 1.. as @e[tag=shaliye,scores={casting=6..19}] at @s run function ingame:ma/shaliye
execute unless score casting pause matches 1.. as @e[tag=leimier,scores={casting=6..19}] at @s run function ingame:ma/leimier


tag @e remove end_ability1