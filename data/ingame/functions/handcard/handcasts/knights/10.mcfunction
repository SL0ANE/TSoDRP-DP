execute if score @s cardcasting matches 38 run tag @s add 123


execute if score @s cardcasting matches 38 as @e[tag=minion,scores={hp=1..}] if score @s minionboard = @e[tag=cardtarget,scores={hp=1..},limit=1] minionboard unless score @s ownedby = @e[tag=cardtarget,scores={hp=1..},limit=1] ownedby run tag @s add target
execute if score @s cardcasting matches 38 if entity @e[tag=target] run scoreboard players set @s cardcasting 37
execute if score @s cardcasting matches 37 at @e[tag=target] run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 37 if entity @e[tag=target] run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1
execute if score @s cardcasting matches 37 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[决一死战]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"选择一个随从，令其对位随从与之轮流互相攻击，直至一方阵亡，然后将一张§2[败者为寇]§f置入胜方拥有者的手牌。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=cardtarget]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]



execute if score @s cardcasting matches 35 run scoreboard players add @s round 1

execute if score @s cardcasting matches 35 as @e[tag=minion,scores={recover=-1}] if score @s minionboard = @e[tag=cardtarget,scores={recover=-1},limit=1] minionboard unless score @s ownedby = @e[tag=cardtarget,scores={recover=-1},limit=1] ownedby run tag @s add target
execute if score @s cardcasting matches 35 unless entity @e[tag=target] run scoreboard players set @s cardcasting 1
execute if score @s cardcasting matches 35 run tag @e[tag=cardtarget] add forceatktarget
execute if score @s cardcasting matches 35 as @e[tag=target,scores={recover=-1}] if entity @e[tag=cardtarget,scores={recover=-1}] run scoreboard players add @s attacktime 1
execute if score @s cardcasting matches 33 as @e[tag=minion,scores={recover=-1}] if score @s minionboard = @e[tag=cardtarget,scores={recover=-1},limit=1] minionboard unless score @s ownedby = @e[tag=cardtarget,scores={recover=-1},limit=1] ownedby run tag @s add target
execute if score @s cardcasting matches 33 if entity @e[tag=target,scores={hp=..0}] run scoreboard players set @s cardcasting 20
execute if score @s cardcasting matches 33 if entity @e[tag=cardtarget,scores={hp=..0}] run scoreboard players set @s cardcasting 20



execute if score @s cardcasting matches 30 as @e[tag=minion,scores={recover=-1}] if score @s minionboard = @e[tag=cardtarget,scores={recover=-1},limit=1] minionboard unless score @s ownedby = @e[tag=cardtarget,scores={recover=-1},limit=1] ownedby run tag @s add target
execute if score @s cardcasting matches 30 unless entity @e[tag=target] run scoreboard players set @s cardcasting 1
execute if score @s cardcasting matches 30 run tag @e[tag=target] add forceatktarget
execute if score @s cardcasting matches 30 as @e[tag=cardtarget,scores={recover=-1}] if entity @e[tag=target,scores={recover=-1}] run scoreboard players add @s attacktime 1
execute if score @s cardcasting matches 28 as @e[tag=minion,scores={recover=-1}] if score @s minionboard = @e[tag=cardtarget,scores={recover=-1},limit=1] minionboard unless score @s ownedby = @e[tag=cardtarget,scores={recover=-1},limit=1] ownedby run tag @s add target
execute if score @s cardcasting matches 28 if entity @e[tag=target,scores={hp=..0}] run scoreboard players set @s cardcasting 20
execute if score @s cardcasting matches 28 if entity @e[tag=cardtarget,scores={hp=..0}] run scoreboard players set @s cardcasting 20
execute if score @s cardcasting matches 28 unless score @s round matches 20.. if entity @e[tag=target] if score @e[tag=target,limit=1] attack matches 1.. run scoreboard players set @s cardcasting 36
execute if score @s cardcasting matches 28 unless score @s round matches 20.. if entity @e[tag=target] if score @e[tag=cardtarget,limit=1] attack matches 1.. run scoreboard players set @s cardcasting 36
execute if score @s cardcasting matches 28 if score @s round matches 20.. run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"决斗中止，因为已经进行了20个回合却未分胜负！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s cardcasting matches 28 if score @s round matches 20.. run scoreboard players set @s cardcasting 1
execute if score @s cardcasting matches 20 as @e[tag=target,scores={hp=1..}] run tag @s add win
execute if score @s cardcasting matches 20 as @e[tag=cardtarget,scores={hp=1..}] run tag @s add win
execute if score @s cardcasting matches 20 as @e[tag=target,scores={hp=..0}] run tag @s add lose
execute if score @s cardcasting matches 20 as @e[tag=cardtarget,scores={hp=..0}] run tag @s add lose
execute if score @s cardcasting matches 20 as @e[tag=win] at @s run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Colors:[I;15662848],FadeColors:[I;16711680]}]}},id:"minecraft:firework_rocket",Count:1},Life:1,LifeTime:10}
execute if score @s cardcasting matches 20 as @e[tag=win] run playsound minecraft:ui.toast.challenge_complete block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s cardcasting matches 20 as @e[tag=card,scores={cardorder=1..2}] if score @s ownedby = @e[tag=target,tag=lose,limit=1] ownedby run tag @s add folding
execute if score @s cardcasting matches 20 as @e[tag=card,scores={cardorder=1..2}] if score @s ownedby = @e[tag=cardtarget,tag=lose,limit=1] ownedby run tag @s add folding
execute if score @s cardcasting matches 20 run playsound minecraft:entity.evoker.prepare_summon block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s cardcasting matches 20 run particle minecraft:dust 1.2 0.3 0.3 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 20 run scoreboard players set @s cardcasting 1
tag @e remove win
tag @e remove lose
tag @e remove summon
tag @e remove target
tag @s remove 123