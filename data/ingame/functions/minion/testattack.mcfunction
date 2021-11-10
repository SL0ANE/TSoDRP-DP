
execute unless score @s ownedby = @a[tag=click,limit=1] playernumber run tag @a[tag=click,tag=!attackfail] add notpossess
execute unless score @s ownedby = @a[tag=click,limit=1] playernumber run tag @a[tag=click,tag=!attackfail] add attackfail
#该随从不属于操作者
execute if entity @a[tag=!attackfail,tag=click,limit=1] as @e[tag=mascot] if score @s ownedby = @a[tag=click,limit=1] playernumber if score @s mana < @e[tag=hit,limit=1] cost run tag @a[tag=click,tag=!attackfail] add nomana
execute if entity @a[tag=!attackfail,tag=click,limit=1] as @e[tag=mascot] if score @s ownedby = @a[tag=click,limit=1] playernumber if score @s mana < @e[tag=hit,limit=1] cost run tag @a[tag=click,tag=!attackfail] add attackfail
#如果玩家的剩余费用低于牌的操作消耗值
execute if entity @s[scores={recover=1..}] run tag @a[tag=click,tag=!attackfail] add isrecovering
execute if entity @s[scores={recover=1..}] run tag @a[tag=click,tag=!attackfail] add attackfail
#如果随从正在休眠
execute if entity @s[scores={hp=..0}] run tag @a[tag=click,tag=!attackfail] add 0hp
execute if entity @s[scores={hp=..0}] run tag @a[tag=click,tag=!attackfail] add attackfail
#如果随从正在生命值不足
execute if score @s stun matches 1.. run tag @a[tag=click,tag=!attackfail] add isstunned
execute if score @s stun matches 1.. run tag @a[tag=click,tag=!attackfail] add attackfail
#如果随从处于眩晕
execute if entity @s[scores={attack=..0}] run tag @a[tag=click,tag=!attackfail] add 0ad
execute if entity @s[scores={attack=..0}] run tag @a[tag=click,tag=!attackfail] add attackfail
#如果随从拥有0点攻击力
execute if entity @s[scores={attacked=1..},tag=!aggressive] run tag @a[tag=click,tag=!attackfail] add alreadyatked
execute if entity @s[scores={attacked=1..},tag=!aggressive] run tag @a[tag=click,tag=!attackfail] add attackfail
#如果随从已经攻击过
execute if entity @s[scores={attacked=2},tag=aggressive] run tag @a[tag=click,tag=!attackfail] add alreadyatked
execute if entity @s[scores={attacked=2},tag=aggressive] run tag @a[tag=click,tag=!attackfail] add attackfail
#如果随从已经攻击过
execute if entity @s[tag=attack_lock] run tag @a[tag=click,tag=!attackfail] add alreadyatked
execute if entity @s[tag=attack_lock] run tag @a[tag=click,tag=!attackfail] add attackfail
#如果随从暂被禁止攻击
execute if entity @s[scores={recover=-2}] if entity @a[tag=click,tag=!attackfail] run function ingame:minion/testactivate
execute if entity @s[scores={recover=-2}] run tag @a[tag=click,tag=!attackfail] add attackfail
#如果随从未激活

title @a[tag=attackfail] times 0 1 10
title @a[tag=notpossess] title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"无权操作","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @a[tag=alreadyatked] title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"攻击冷却中","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @a[tag=isstunned] title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"眩晕中","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @a[tag=isrecovering] title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"休眠中","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @a[tag=0ad] title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"攻击力不足","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @a[tag=0hp] title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"生命值不足","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @a[tag=nomana] title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"能量不足","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @a[tag=notpossess] remove notpossess
tag @a[tag=alreadyatked] remove alreadyatked
tag @a[tag=isstunned] remove isstunned
tag @a[tag=isrecovering] remove isrecovering
tag @a[tag=0ad] remove 0ad
tag @a[tag=0hp] remove 0hp
tag @a[tag=nomana] remove nomana
execute if entity @a[tag=click,tag=!attackfail] run function ingame:minion/attack
tag @a[tag=attackfail] remove attackfail
