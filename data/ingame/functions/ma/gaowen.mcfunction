execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 run particle minecraft:dust 0.3 0.3 0.3 2 ~ ~ ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 10 run playsound minecraft:entity.arrow.hit block @a[tag=ingame] ~ ~ ~ 3 0.1 1
execute if score @s casting matches 10 as @e[tag=card,scores={cardorder=1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add folding
execute if score @s casting matches 10 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"高文","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"永久拥有【横扫】。你的回合内，若本回合你未弃置过牌，则将此随从的攻击力变为2。每当此随从唤醒时，弃置你的牌堆顶的一张牌。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @s remove 123