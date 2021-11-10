execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 unless entity @e[tag=target] if entity @e[tag=beingused,scores={pack=0}] unless entity @s[tag=casted2_pack0] as @e[tag=card,scores={cardorder=1..}] unless score @s cardid = @e[tag=beingused,limit=1] cardid if score @s ownedby = @e[tag=123,limit=1] ownedby if score @s pack = @e[tag=beingused,limit=1] pack run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] if entity @e[tag=beingused,scores={pack=1}] unless entity @s[tag=casted2_pack1] as @e[tag=card,scores={cardorder=1..}] unless score @s cardid = @e[tag=beingused,limit=1] cardid if score @s ownedby = @e[tag=123,limit=1] ownedby if score @s pack = @e[tag=beingused,limit=1] pack run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] if entity @e[tag=beingused,scores={pack=2}] unless entity @s[tag=casted2_pack2] as @e[tag=card,scores={cardorder=1..}] unless score @s cardid = @e[tag=beingused,limit=1] cardid if score @s ownedby = @e[tag=123,limit=1] ownedby if score @s pack = @e[tag=beingused,limit=1] pack run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] if entity @e[tag=beingused,scores={pack=3}] unless entity @s[tag=casted2_pack3] as @e[tag=card,scores={cardorder=1..}] unless score @s cardid = @e[tag=beingused,limit=1] cardid if score @s ownedby = @e[tag=123,limit=1] ownedby if score @s pack = @e[tag=beingused,limit=1] pack run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] if entity @e[tag=beingused,scores={pack=4}] unless entity @s[tag=casted2_pack4] as @e[tag=card,scores={cardorder=1..}] unless score @s cardid = @e[tag=beingused,limit=1] cardid if score @s ownedby = @e[tag=123,limit=1] ownedby if score @s pack = @e[tag=beingused,limit=1] pack run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] if entity @e[tag=beingused,scores={pack=5}] unless entity @s[tag=casted2_pack5] as @e[tag=card,scores={cardorder=1..}] unless score @s cardid = @e[tag=beingused,limit=1] cardid if score @s ownedby = @e[tag=123,limit=1] ownedby if score @s pack = @e[tag=beingused,limit=1] pack run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] if entity @e[tag=beingused,scores={pack=6}] unless entity @s[tag=casted2_pack6] as @e[tag=card,scores={cardorder=1..}] unless score @s cardid = @e[tag=beingused,limit=1] cardid if score @s ownedby = @e[tag=123,limit=1] ownedby if score @s pack = @e[tag=beingused,limit=1] pack run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] if entity @e[tag=beingused,scores={pack=7}] unless entity @s[tag=casted2_pack7] as @e[tag=card,scores={cardorder=1..}] unless score @s cardid = @e[tag=beingused,limit=1] cardid if score @s ownedby = @e[tag=123,limit=1] ownedby if score @s pack = @e[tag=beingused,limit=1] pack run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] if entity @e[tag=beingused,scores={pack=8}] unless entity @s[tag=casted2_pack8] as @e[tag=card,scores={cardorder=1..}] unless score @s cardid = @e[tag=beingused,limit=1] cardid if score @s ownedby = @e[tag=123,limit=1] ownedby if score @s pack = @e[tag=beingused,limit=1] pack run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1

execute if score @s casting matches 18 if entity @e[tag=target] if entity @e[tag=beingused,scores={pack=0}] run tag @s add casted2_pack0
execute if score @s casting matches 18 if entity @e[tag=target] if entity @e[tag=beingused,scores={pack=1}] run tag @s add casted2_pack1
execute if score @s casting matches 18 if entity @e[tag=target] if entity @e[tag=beingused,scores={pack=2}] run tag @s add casted2_pack2
execute if score @s casting matches 18 if entity @e[tag=target] if entity @e[tag=beingused,scores={pack=3}] run tag @s add casted2_pack3
execute if score @s casting matches 18 if entity @e[tag=target] if entity @e[tag=beingused,scores={pack=4}] run tag @s add casted2_pack4
execute if score @s casting matches 18 if entity @e[tag=target] if entity @e[tag=beingused,scores={pack=5}] run tag @s add casted2_pack5
execute if score @s casting matches 18 if entity @e[tag=target] if entity @e[tag=beingused,scores={pack=6}] run tag @s add casted2_pack6
execute if score @s casting matches 18 if entity @e[tag=target] if entity @e[tag=beingused,scores={pack=7}] run tag @s add casted2_pack7
execute if score @s casting matches 18 if entity @e[tag=target] if entity @e[tag=beingused,scores={pack=8}] run tag @s add casted2_pack8


execute if score @s casting matches 18 as @e[tag=target,limit=1,sort=random] run tag @s add forcedraw
execute if score @s casting matches 18 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run scoreboard players add @s drawtime 1

execute if score @s casting matches 18 if entity @e[tag=target] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"水瓶座","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你使用一张牌后，令你抽一张与之来自相同卡包的不同的牌，每个卡包每回合限一次。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 18 if entity @e[tag=target] run particle minecraft:dust 1 1 0.4 1.6 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s casting matches 18 if entity @e[tag=target] run playsound minecraft:entity.illusioner.cast_spell block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s casting matches 18 run scoreboard players set @s casting 5
tag @e remove target
tag @s remove 123