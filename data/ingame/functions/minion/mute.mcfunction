tag @s add mutetarget1
execute as @e[tag=caster2] if score @s minioncode = @e[tag=mutetarget1,limit=1] minioncode run kill @s
tag @s remove mutetarget1
scoreboard players operation @s hplimit = @s basic_hp
execute if score @s hp > @s basic_hp run scoreboard players operation @s hp = @s basic_hp
scoreboard players operation @s trueattack = @s basic_attack
tag @s remove stun
scoreboard players set @s stun 0

tag @s remove aggressive
#暴走
tag @s remove keen
#穿心
tag @s remove cunning
#狡诈
tag @s remove dodge
#回避
tag @s remove immune
#魔免
tag @s remove prudent
#谨慎
tag @s remove strike
#重击
tag @s remove tough
#坚韧
tag @s remove puzzle
#玄惑
tag @s remove block
#格挡
tag @s remove chain
#连锁
tag @s remove sweep
#横扫
tag @s remove addaggressive
#增加暴走
tag @s remove addkeen
#增加穿心
tag @s remove addcunning
#增加狡诈
tag @s remove adddodge
#增加回避
tag @s remove addimmune
#增加魔免
tag @s remove addprudent
#增加谨慎
tag @s remove addstrike
#增加重击
tag @s remove addtough
#增加坚韧
tag @s remove addpuzzle
#增加玄惑
tag @s remove addblock
#增加格挡
tag @s remove addchain
#增加连锁
tag @s remove addsweep
#增加横扫
tag @s add mute

function ingame:minion/buffcheck

function ingame:minion/hpcheck

