execute as @e[tag=minion] run scoreboard players set @s haloattack 0
execute as @e[tag=mascot] run scoreboard players set @s haloattack 0
execute as @e[tag=mascot] run scoreboard players set @s halodamage 0
#光环攻击重置
tag @e remove dying
execute as @e[tag=character,scores={hp=..0,recover=-1}] run tag @s add dying
execute as @e[tag=character,scores={dying=1..}] run tag @s add dying
#tag_dying


execute as @e[tag=environmentcaster,scores={dying=145}] unless score dying pause matches 1.. at @s run function ingame:abilities/predestroy
execute as @e[tag=environmentcaster,scores={dying=141}] unless score dying pause matches 1.. at @s run function ingame:event/casterdestroy
#环境牌死亡（摧毁）

execute as @e[tag=minion,scores={dying=145}] unless score dying pause matches 1.. at @s run function ingame:abilities/predeath
execute as @e[tag=minion,scores={dying=141}] unless score dying pause matches 1.. at @s run function ingame:event/miniondietest
execute as @e[tag=minion,scores={dying=139}] unless score dying pause matches 1.. at @s run function ingame:abilities/subdeath
execute as @e[tag=minion,scores={dying=138}] unless score dying pause matches 1.. at @s run function ingame:event/miniondied

#随从死亡
execute as @e[tag=mascot,scores={hp=1..,dying=1..}] run scoreboard players reset @s dying
execute as @e[tag=mascot,scores={dying=145}] unless score dying pause matches 1.. at @s run function ingame:abilities/predeath
execute as @e[tag=mascot,scores={dying=1..130}] unless score dying pause matches 1.. if score system arena matches 0 at @s run function ingame:event/playerdie0
execute as @e[tag=mascot,scores={dying=1..130}] unless score dying pause matches 1.. if score system arena matches 1 at @s run function ingame:event/playerdie1
#牌手死亡




execute unless score usecard pause matches 1.. as @e[tag=mascot,scores={recover=-1,usingcard=19}] run function ingame:abilities/preusecard
execute unless score usecard pause matches 1.. as @e[tag=mascot,scores={recover=-1,usingcard=10}] at @s run function ingame:event/usecard
execute unless score usecard pause matches 1.. as @e[tag=mascot,scores={recover=-1,usingcard=5}] run function ingame:abilities/subusecard
execute unless score usecard pause matches 1.. as @e[tag=mascot,scores={recover=-1,usingcard=1}] run function ingame:event/cardused
#使用牌




execute unless score attack pause matches 1.. unless entity @e[scores={attacking=1..}] as @e[scores={attacktime=1..}] unless score @s attacking matches 1.. run function ingame:event/attackstart
execute as @e[tag=!forceattack,tag=minion,scores={attacking=37}] at @s unless score attack pause matches 1.. unless score @s hp matches 1.. run scoreboard players set @s attacking 2
execute as @e[tag=!forceattack,tag=minion,scores={attacking=37}] at @s unless score attack pause matches 1.. if score @s hp matches 1.. run function ingame:event/attackmotion
execute as @e[tag=forceattack,tag=minion,scores={attacking=37}] at @s unless score attack pause matches 1.. run function ingame:event/attackmotion
execute as @e[tag=minion,scores={attacking=36}] at @s unless score attack pause matches 1.. run function ingame:abilities/preattack
execute as @e[tag=!forceattack,tag=minion,scores={attacking=19..30}] at @s unless score attack pause matches 1.. unless score @s hp matches 1.. run scoreboard players set @s attacking 16
execute as @e[tag=!forceattack,tag=minion,scores={attacking=19..30}] at @s unless score attack pause matches 1.. if score @s hp matches 1.. run function ingame:event/attackmotion2
execute as @e[tag=forceattack,tag=minion,scores={attacking=19..30}] at @s unless score attack pause matches 1.. run function ingame:event/attackmotion2
execute as @e[tag=!forceattack,tag=minion,scores={attacking=17}] at @s unless score attack pause matches 1.. unless score @s hp matches 1.. run scoreboard players set @s attacking 16
execute as @e[tag=!forceattack,tag=minion,scores={attacking=17}] at @s unless score attack pause matches 1.. if score @s hp matches 1.. run function ingame:event/attack
execute as @e[tag=forceattack,tag=minion,scores={attacking=17}] at @s unless score attack pause matches 1.. run function ingame:event/attack
execute as @e[tag=minion,scores={attacking=5..15}] at @s unless score attack pause matches 1.. run function ingame:event/attackmotion3
execute as @e[tag=minion,scores={attacking=3}] at @s unless score attack pause matches 1.. run function ingame:abilities/subattack
execute as @e[tag=minion,scores={attacking=1}] at @s unless score attack pause matches 1.. run function ingame:event/attackmotion4
#攻击



execute as @e[tag=character,scores={dmgtaking=8}] at @s unless score dmgtake pause matches 1.. run function ingame:abilities/dmgmultiplier
execute as @e[tag=character,scores={dmgtaking=5}] at @s unless score dmgtake pause matches 1.. run function ingame:abilities/predmgtaken
execute as @e[tag=character,scores={dmgtaking=4}] at @s unless score dmgtake pause matches 1.. run function ingame:event/damagetype
execute as @e[tag=character,scores={dmgtaking=3}] at @s unless score dmgtake pause matches 1.. run function ingame:abilities/subdmgtaken
execute as @e[tag=character,scores={dmgtaking=2}] at @s unless score dmgtake pause matches 1.. run function ingame:event/damagetaken
#受伤

execute as @e[tag=character,scores={healing=8}] at @s unless score heal pause matches 1.. run function ingame:abilities/healmultiplier
execute as @e[tag=character,scores={healing=5}] at @s unless score heal pause matches 1.. run function ingame:abilities/preheal
execute as @e[tag=character,scores={healing=4}] at @s unless score heal pause matches 1.. run function ingame:event/heal
execute as @e[tag=character,scores={healing=3}] at @s unless score heal pause matches 1.. run function ingame:abilities/subheal
execute as @e[tag=character,scores={healing=2}] at @s unless score heal pause matches 1.. run function ingame:event/healtaken
#获得治疗

execute as @e[tag=character] at @s unless score dmgdeal pause matches 1.. if score @s dmgdealing matches 11 if entity @e[tag=atktarget] run function ingame:event/at_dmgdealset
execute as @e[tag=character] at @s unless score dmgdeal pause matches 1.. if score @s dmgdealing matches 9 if entity @e[tag=atktarget] run function ingame:abilities/predmgdealt
execute as @e[tag=character] at @s unless score dmgdeal pause matches 1.. if score @s dmgdealing matches 8 run function ingame:event/at_dealdamage
execute as @e[tag=character] at @s unless score dmgdeal pause matches 1.. if score @s dmgdealing matches 6 run function ingame:event/at_sweep
execute as @e[tag=character] at @s unless score dmgdeal pause matches 1.. if score @s dmgdealing matches 4 run function ingame:abilities/subdmgdealt
execute as @e[tag=character] at @s unless score dmgdeal pause matches 1.. if score @s dmgdealing matches 1 run function ingame:event/damagedealt
#造成伤害

execute as @e[tag=minion,scores={entering=8}] at @s unless score enter pause matches 1.. run function ingame:abilities/preenter
execute as @e[tag=minion,scores={entering=7}] at @s unless score enter pause matches 1.. run function ingame:event/enter
execute as @e[tag=minion,scores={entering=3}] at @s unless score enter pause matches 1.. run function ingame:abilities/subenter
#登场

execute as @e[tag=minion,scores={recovering=8}] at @s unless score recover pause matches 1.. run function ingame:abilities/prerecover
execute as @e[tag=minion,scores={recovering=7}] at @s unless score recover pause matches 1.. run function ingame:event/recover
execute as @e[tag=minion,scores={recovering=3}] at @s unless score recover pause matches 1.. run function ingame:abilities/subrecover
#唤醒
execute as @e[tag=minion,scores={stunremoving=4}] at @s unless score stunremove pause matches 1.. run function ingame:abilities/prestunremove
execute as @e[tag=minion,scores={stunremoving=1}] at @s unless score stunremove pause matches 1.. run function ingame:event/stunremove
#减少眩晕层数
execute as @e[tag=minion,scores={rcvremoving=4}] at @s unless score recoverremove pause matches 1.. run function ingame:abilities/prercvremove
execute as @e[tag=minion,scores={rcvremoving=1}] at @s unless score recoverremove pause matches 1.. run function ingame:event/recoverremove
#减少休眠层数

execute unless score fold pause matches 1.. unless entity @e[tag=card,scores={folding=1..}] as @e[tag=folding] run scoreboard players set @s folding 23
execute unless score fold pause matches 1.. as @e[tag=card,scores={folding=18}] run function ingame:abilities/prefold
execute unless score fold pause matches 1.. as @e[tag=card,tag=castwhenfolded,scores={folding=16}] run function ingame:castwhenfolded
execute unless score fold pause matches 1.. as @e[tag=card,scores={folding=14}] at @s run function ingame:event/fold
execute unless score fold pause matches 1.. as @e[tag=card,scores={folding=10}] run function ingame:abilities/subfold
execute unless score fold pause matches 1.. as @e[tag=card,scores={folding=7}] run function ingame:event/cardfolded

#弃牌


execute unless score draw pause matches 1.. as @e[tag=mascot,scores={drawing=18}] run function ingame:abilities/predraw
execute unless score draw pause matches 1.. as @e[tag=mascot,scores={drawing=16}] run function ingame:testdrawcard
execute unless score draw pause matches 1.. as @e[tag=mascot,scores={drawing=10}] run function ingame:abilities/subdraw
execute unless score draw pause matches 1.. as @e[tag=mascot,scores={drawing=7}] run function ingame:event/carddrawn

#抽牌

execute unless score endround pause matches 1.. as @e[tag=mascot,scores={roundending=22}] run function ingame:abilities/preendround
execute unless score endround pause matches 1.. as @e[tag=mascot,scores={roundending=10}] run function ingame:event/endround
execute unless score endround pause matches 1.. as @e[tag=mascot,scores={roundending=8}] run function ingame:abilities/subendround
execute unless score endround pause matches 1.. as @e[tag=mascot,scores={roundending=5}] run function ingame:event/endround_rmvstn
execute unless score endround pause matches 1.. as @e[tag=mascot,scores={roundending=3}] run function ingame:event/roundended
execute unless score endround pause matches 1.. as @e[tag=mascot,scores={roundending=2}] run function ingame:event/startnewround

#回合结束
execute unless score startround pause matches 1.. as @e[tag=mascot,scores={roundstarting=22}] run function ingame:event/startround_rmvrcv
execute unless score startround pause matches 1.. as @e[tag=mascot,scores={roundstarting=19}] run function ingame:abilities/prestartround
execute unless score startround pause matches 1.. as @e[tag=mascot,scores={roundstarting=10}] run function ingame:event/startround
execute unless score startround pause matches 1.. as @e[tag=mascot,scores={roundstarting=6}] run function ingame:abilities/substartround
execute unless score startround pause matches 1.. as @e[tag=mascot,scores={roundstarting=1}] run function ingame:event/roundstarted
#回合开始

execute unless score switch pause matches 1.. as @e[tag=minion,scores={switching=4}] run function ingame:abilities/preswitch
execute unless score switch pause matches 1.. as @e[tag=minion,tag=switcher,scores={switching=3}] at @s run function ingame:event/switch
execute unless score switch pause matches 1.. as @e[tag=minion,scores={switching=2}] run function ingame:abilities/subswitch
execute unless score switch pause matches 1.. as @e[tag=minion,scores={switching=1}] run function ingame:event/switched
#随从换位



execute as @e[tag=minion,scores={casting=22}] run function ingame:abilities/precast
execute as @e[tag=minion,scores={casting2=22}] run function ingame:abilities/precast2
function ingame:halos
function ingame:abilities
function ingame:abilities2
execute unless score supercasting pause matches 1.. run function ingame:abilities3
execute as @e[tag=minion,scores={casting=4}] run function ingame:abilities/subcast
execute as @e[tag=minion,scores={casting2=4}] run function ingame:abilities/subcast2
execute as @e[tag=minion,scores={casting=1}] run function ingame:event/casted
execute as @e[tag=minion,scores={casting2=1}] run function ingame:event/casted2
#释放技能
execute unless score cardcast pause matches 1.. as @e[tag=cardcaster,scores={cardcasting=3..38}] at @s run function ingame:handcard/handcast
execute unless score cardcast pause matches 1.. as @e[tag=minioncaster] at @s run function ingame:minioncaster
execute unless score cardcast pause matches 1.. as @e[tag=cardcaster,scores={cardcasting=1}] at @s run function ingame:event/cardcasted
execute unless score cardcast pause matches 1.. as @e[tag=cardcaster,scores={cardcasting=0}] at @s run function ingame:event/cardrecast
execute unless score cardcast pause matches 1.. as @e[tag=autocast,scores={cardcasting=3..38}] at @s run function ingame:handcard/autocast
execute unless score cardcast pause matches 1.. as @e[tag=autocast,scores={cardcasting=1}] at @s run function ingame:event/cardautocasted
#释放牌
execute as @e[tag=caster2] at @s unless score cardcast2 pause matches 1.. run function ingame:handcard/secondcast
execute as @e[tag=caster3] at @s unless score cardcast3 pause matches 1.. run function ingame:handcard/secondcast2
execute as @e[tag=caster2,tag=minioncaster] at @s run function ingame:minioncaster2
execute as @e[tag=caster2,tag=!trapcaster] unless score @s cardcast2order matches 1.. run function ingame:cardcast2orderget
#释放牌2
execute unless score trapcast pause matches 1.. as @e[tag=trapcaster,scores={trapcasting=6..38}] at @s run function ingame:handcard/trapcast
execute unless score trapcast pause matches 1.. as @e[tag=trapcaster,scores={trapcasting=5}] at @s run function ingame:abilities/subtrapcast
execute unless score trapcast pause matches 1.. as @e[tag=trapcaster,scores={trapcasting=3}] at @s run function ingame:event/trapcasted
#陷阱牌触发

execute unless score dying pause matches 1.. as @e[tag=character,scores={hp=..0,recover=-1}] unless score @s dying matches 1.. run scoreboard players set @s dying 147
execute unless score eventplaying pause matches 1.. as @e[tag=surrender,tag=mascot,scores={recover=-1}] unless score @s dying matches 1.. run scoreboard players set @s[scores={hp=1..}] hp -999
execute unless score eventplaying pause matches 1.. as @e[tag=surrender,tag=mascot,scores={recover=-1}] unless score @s dying matches 1.. run scoreboard players set @s dying 142
#死亡自动
execute unless score heal pause matches 1.. as @e[scores={healtaken=1..}] unless score @s healing matches 1.. run scoreboard players set @s healing 10
#治疗自动
execute unless score dmgtake pause matches 1.. as @e[tag=character,scores={at_dmgtaken=1..}] unless score @s dmgtaking matches 1.. run scoreboard players set @s dmgtaking 10
execute unless score dmgtake pause matches 1.. as @e[tag=character,scores={dmgtaken=1..}] unless score @s dmgtaking matches 1.. run scoreboard players set @s dmgtaking 10
#受伤自动
execute unless score recover pause matches 1.. as @e[tag=minion,scores={recover=0}] unless score @s recovering matches 1.. run scoreboard players set @s recovering 10
#唤醒自动
execute unless score draw pause matches 1.. unless entity @e[tag=mascot,scores={drawing=1..}] as @e[tag=mascot,scores={drawtime=1..}] run scoreboard players set @s drawing 23
#抽牌自动
execute as @e[tag=card,scores={handorder=1..}] run function ingame:exceededhandcards
#手牌数超过手牌上限爆牌自动

execute as @e[tag=minion] at @s run function ingame:minion/hpcheck
execute as @e[tag=mascot] at @s run function ingame:mascot/hpcheck
#攻击力总结


