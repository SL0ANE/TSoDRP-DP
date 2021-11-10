execute if score system waiting matches 1.. run scoreboard players remove system waiting 1
scoreboard players remove @e[tag=effect,scores={waiting=1..}] waiting 1
#————————————


execute as @e[tag=card,scores={handorder=1..}] run scoreboard players set @s halocost 0
execute as @e[tag=minion] run scoreboard players set @s halocost 0
execute as @e[tag=card,scores={handorder=1..}] run scoreboard players set @s halohpcost 0
#光环费用重置
execute as @e[tag=mascot] run function ingame:checkhand
#时刻监测玩家手牌数
execute as @e[tag=deck] run function ingame:setdeck
#牌堆颜色
execute as @e[tag=deck] run function ingame:deck_color
#牌堆颜色
execute as @a[scores={playernumber=1..2},tag=ingame] at @s run function ingame:playerinventoryui
#玩家背包按钮
execute as @a unless score @s hoverhotbar matches 1..7 at @s run function ingame:handcard/setback
#收回正在展示的牌
execute as @a[tag=ingame,scores={rightclick=1..,sneak=0,hoverhotbar=0..7,playernumber=1..2},nbt={SelectedItem:{tag:{Tags:["control"]}}}] at @s run function ingame:selectamong3
#选择发现牌
execute as @a[tag=ingame,scores={rightclick=1..,sneak=0,hoverhotbar=8},nbt={SelectedItem:{tag:{Tags:["control"]}}}] at @s run function ingame:datacheck
#查看信息
execute as @e[tag=minion,tag=mute,scores={recover=-1}] at @s run particle minecraft:enchant ~ ~0.2 ~ 0 0 0 0.5 3 force
#沉默特效
function ingame:event
#事件
execute as @e[tag=character] run function ingame:applybuff
#增加buff
function ingame:effect
#动画
execute as @a[scores={hoverhotbar=0..8,playernumber=1..2}] at @s run function ingame:handcard/select
#如果玩家悬停于手牌，展示牌
execute as @a[tag=ingame,scores={rightclick=1..,hoverhotbar=1..7,playernumber=1..2},nbt={SelectedItem:{tag:{Tags:["control"]}}}] at @s run function ingame:handcard/usecard1
#玩家使用牌
execute as @a[tag=ingame,scores={rightclick=1..,sneak=0,hoverhotbar=0},nbt={SelectedItem:{tag:{Tags:["control"]}}}] at @s run function ingame:attacktestonturn
#令随从攻击
execute as @a[tag=ingame,scores={rightclick=1..,sneak=1..,hoverhotbar=0},nbt={SelectedItem:{tag:{Tags:["control"]}}}] at @s run function ingame:switchtestonturn
#随从换位
function ingame:closegate
#关门
execute if score system pause matches 2 if score roundtime system matches 1800..3600 run function ingame:roundtime

execute as @e[tag=mascot,tag=ownedby1] at @s facing entity @a[scores={playernumber=1},sort=nearest,limit=1,distance=..5] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=mascot,tag=ownedby2] at @s facing entity @a[scores={playernumber=2},sort=nearest,limit=1,distance=..5] feet run tp @s ~ ~ ~ ~ ~




function ingame:pause/eventplaying
function ingame:pause/supercastingpause
function ingame:pause/castingpause
function ingame:pause/casting2pause
function ingame:pause/cardcastpause
function ingame:pause/cardcast2pause
function ingame:pause/cardcast3pause
function ingame:pause/stunremovepause
function ingame:pause/recoverremovepause
function ingame:pause/healpause
function ingame:pause/dmgtakepause
function ingame:pause/dmgdealpause
function ingame:pause/attackpause
function ingame:pause/drawpause
function ingame:pause/switchpause
function ingame:pause/foldpause
function ingame:pause/usecardpause
function ingame:pause/startroundpause
function ingame:pause/endroundpause
function ingame:pause/recoverpause
function ingame:pause/enterpause
function ingame:pause/dyingpause
function ingame:pause/trapcastpause




#第0级，当进行3选1（或类似的选择事件）时，一切其他事件暂停
execute as @e[scores={rcvremoving=1..}] unless score recoverremove pause matches 1.. run scoreboard players remove @s rcvremoving 1
#第1级，rcvremoving，休眠层数减少，不论什么情况下，层数的减少必须执行
execute as @e[scores={stunremoving=1..}] unless score stunremove pause matches 1.. run scoreboard players remove @s stunremoving 1
#第2级，stunremoving，眩晕层数减少
execute unless entity @e[scores={supercasting=1..19}] unless score supercasting pause matches 1.. run scoreboard players set @e[scores={supercasting=20},limit=1,sort=random] supercasting 19
execute as @e[scores={supercasting=1..19}] unless score supercasting pause matches 1.. run scoreboard players remove @s supercasting 1
#第3级，supercasting，与“技能释放”相关的技能
execute unless entity @e[scores={cardcasting3=1..20}] unless score cardcast3 pause matches 1.. run function ingame:cardcast3order
execute as @e[scores={cardcasting3=1..20}] unless score cardcast3 pause matches 1.. run scoreboard players remove @s cardcasting3 1
#第4级，cardcasting3，类似次级随从技能的卡牌效果，延迟发动或于特定时机发动的效果。
execute unless entity @e[scores={casting2=1..23}] unless score casting2 pause matches 1.. run function ingame:cast2order
execute as @e[scores={casting2=1..23}] unless score casting2 pause matches 1.. run scoreboard players remove @s casting2 1
#第5级，casting2，随从次级技能释放
execute unless entity @e[scores={folding=1..20}] unless score fold pause matches 1.. run function ingame:foldorder
execute as @e[scores={folding=1..20}] unless score fold pause matches 1.. run scoreboard players remove @s folding 1
#第6级，folding，弃置卡牌
execute unless entity @e[scores={trapcasting=1..38}] unless score trapcast pause matches 1.. run function ingame:trapcastorder
execute as @e[scores={trapcasting=1..38}] unless score trapcast pause matches 1.. run scoreboard players remove @s trapcasting 1
#第7级，trapcasting，陷阱牌释放
execute unless entity @e[scores={dmgtaking=1..9}] unless score dmgtake pause matches 1.. run function ingame:dmgtakeorder
execute as @e[scores={dmgtaking=1..9}] unless score dmgtake pause matches 1.. run scoreboard players remove @s dmgtaking 1
#第8级，dmgtaking，受到伤害
execute as @e[scores={healing=1..}] unless score @s healtaken matches 1.. run scoreboard players reset @s healing
execute unless entity @e[scores={healing=1..9}] unless score heal pause matches 1.. run function ingame:healorder
execute as @e[scores={healing=1..9}] unless score heal pause matches 1.. run scoreboard players remove @s healing 1
#第9级，healing，获得治疗
execute unless entity @e[scores={casting=1..23}] unless score casting pause matches 1.. run function ingame:castorder
execute as @e[scores={casting=1..23}] unless score casting pause matches 1.. run scoreboard players remove @s casting 1
#第10级，casting，随从技能释放
execute unless entity @e[scores={cardcasting2=1..20}] unless score cardcast2 pause matches 1.. run function ingame:cardcast2order
execute as @e[scores={cardcasting2=1..20}] unless score cardcast2 pause matches 1.. run scoreboard players remove @s cardcasting2 1
#第11级，cardcasting2，类似随从技能的卡牌效果，延迟发动或于特定时机发动的效果。
execute as @e[scores={dmgdealing=1..}] unless score dmgdeal pause matches 1.. run scoreboard players remove @s dmgdealing 1
#第12级，dmgdealing，造成伤害
execute unless entity @e[scores={attacking=1..38}] unless score attack pause matches 1.. run function ingame:attackorder
execute as @e[scores={attacking=1..38}] unless score attack pause matches 1.. run scoreboard players remove @s attacking 1
#第13级，attacking，随从攻击
execute as @e[scores={switching=1..}] unless score switch pause matches 1.. run scoreboard players remove @s switching 1
#第14级，switching，随从换位
execute unless entity @e[scores={drawing=1..20}] unless score draw pause matches 1.. run function ingame:draworder
execute as @e[scores={drawing=1..20}] unless score draw pause matches 1.. run scoreboard players remove @s drawing 1
#第15级，drawing，抽牌
execute unless entity @e[scores={cardcasting=1..39}] unless score cardcast pause matches 1.. run scoreboard players set @e[tag=cardcaster,scores={cardcasting=40},limit=1,sort=random] cardcasting 39
execute unless entity @e[scores={cardcasting=1..39}] unless score cardcast pause matches 1.. run scoreboard players set @e[tag=autocast,scores={cardcasting=40},limit=1,sort=random] cardcasting 39
execute unless entity @e[scores={cardcasting=1..39}] unless score cardcast pause matches 1.. run scoreboard players set @e[tag=minioncaster,scores={cardcasting=40},limit=1,sort=random] cardcasting 39
execute as @e[scores={cardcasting=1..39}] unless score cardcast pause matches 1.. run scoreboard players remove @s cardcasting 1
#第16级，cardcasting，卡牌施放的效果
execute as @e[scores={usingcard=1..}] unless score usecard pause matches 1.. run scoreboard players remove @s usingcard 1
#第17级，usingcard，使用卡牌
execute unless entity @e[scores={dying=1..146}] unless score dying pause matches 1.. run function ingame:dyingorder
execute as @e[scores={dying=1..146}] unless score dying pause matches 1.. run scoreboard players remove @s dying 1
#第18级，dying，随从牌手的死亡。
execute unless entity @e[scores={recovering=1..9}] unless score recover pause matches 1.. run function ingame:recoveringorder
execute as @e[scores={recovering=1..9}] unless score recover pause matches 1.. run scoreboard players remove @s recovering 1
#第19级，recovering，随从唤醒
execute unless entity @e[scores={entering=1..9}] unless score enter pause matches 1.. run function ingame:enterorder
execute as @e[scores={entering=1..9}] unless score enter pause matches 1.. run scoreboard players remove @s entering 1
#第20级，entering，随从登场
execute as @e[scores={roundstarting=1..}] unless score startround pause matches 1.. run scoreboard players remove @s roundstarting 1
#第21级，roundstarting，回合开始
execute as @e[scores={roundending=1..}] unless score endround pause matches 1.. run scoreboard players remove @s roundending 1
#最低级，roundending，回合结束




execute if score system gamecd matches 351.. as @a[scores={playernumber=1..2}] run function ingame:display/hotbarset
#玩家物品栏
