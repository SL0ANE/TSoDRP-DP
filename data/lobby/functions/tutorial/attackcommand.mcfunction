tag @s add click
scoreboard objectives add repeatcount dummy

summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:["ray","search"],Potion:CBC,Age:0,Duration:0,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}
execute anchored eyes run tp @e[tag=ray] ^ ^ ^0.5 ~ ~
execute as @e[tag=ray] at @s run function lobby:tutorial/ray
#execute if entity @e[tag=hit,tag=endround] run playsound minecraft:ui.button.click block @a[tag=click] ~ ~ ~ 3 0.4 1
#execute if entity @e[tag=hit,tag=endround] if entity @e[tag=targetmascot] run data merge entity @e[tag=endround,limit=1] {CustomName:"[{\"text\":\"回合结束\",\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
#execute if entity @e[tag=hit,tag=endround] run scoreboard players set @e[tag=targetmascot] roundending 24

kill @e[tag=ray]
execute if score tutorial system matches 107 if entity @a[tag=click,scores={sneak=0}] as @e[tag=hit,tag=lansiluote,tag=t_minion] run tag @s add t_pass
execute if score tutorial system matches 107 unless entity @e[tag=hit,tag=t_pass,tag=lansiluote] run title @s clear
execute if score tutorial system matches 107 unless entity @e[tag=hit,tag=t_pass,tag=lansiluote] run title @s times 0 1 10
execute if score tutorial system matches 107 unless entity @e[tag=hit,tag=t_pass,tag=lansiluote] run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"请按照指示操作","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score tutorial system matches 124 if entity @a[tag=click,scores={sneak=0}] as @e[tag=hit,tag=t_endround] run tag @s add t_pass
execute if score tutorial system matches 124 unless entity @e[tag=hit,tag=t_pass,tag=t_endround] run title @s clear
execute if score tutorial system matches 124 unless entity @e[tag=hit,tag=t_pass,tag=t_endround] run title @s times 0 1 10
execute if score tutorial system matches 124 unless entity @e[tag=hit,tag=t_pass,tag=t_endround] run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"请按照指示操作","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score tutorial system matches 171 if entity @a[tag=click,scores={sneak=0}] as @e[tag=hit,tag=asimode,tag=t_minion] run tag @s add t_pass
execute if score tutorial system matches 171 unless entity @e[tag=hit,tag=t_pass,tag=asimode] run title @s clear
execute if score tutorial system matches 171 unless entity @e[tag=hit,tag=t_pass,tag=asimode] run title @s times 0 1 10
execute if score tutorial system matches 171 unless entity @e[tag=hit,tag=t_pass,tag=asimode] run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"请按照指示操作","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score tutorial system matches 181 if entity @a[tag=click,scores={sneak=0}] as @e[tag=hit,tag=lansiluote,tag=t_minion] run tag @s add t_pass
execute if score tutorial system matches 181 unless entity @e[tag=hit,tag=t_pass,tag=lansiluote] run title @s clear
execute if score tutorial system matches 181 unless entity @e[tag=hit,tag=t_pass,tag=lansiluote] run title @s times 0 1 10
execute if score tutorial system matches 181 unless entity @e[tag=hit,tag=t_pass,tag=lansiluote] run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"请按照指示操作","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score tutorial system matches 223 if entity @a[tag=click,scores={sneak=0}] as @e[tag=hit,tag=t_endround] run tag @s add t_pass
execute if score tutorial system matches 223 unless entity @e[tag=hit,tag=t_pass,tag=t_endround] run title @s clear
execute if score tutorial system matches 223 unless entity @e[tag=hit,tag=t_pass,tag=t_endround] run title @s times 0 1 10
execute if score tutorial system matches 223 unless entity @e[tag=hit,tag=t_pass,tag=t_endround] run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"请按照指示操作","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score tutorial system matches 276 if entity @a[tag=click,scores={sneak=0}] as @e[tag=hit,tag=lansiluote,tag=t_minion] run tag @s add t_pass
execute if score tutorial system matches 276 unless entity @e[tag=hit,tag=t_pass,tag=lansiluote] run title @s clear
execute if score tutorial system matches 276 unless entity @e[tag=hit,tag=t_pass,tag=lansiluote] run title @s times 0 1 10
execute if score tutorial system matches 276 unless entity @e[tag=hit,tag=t_pass,tag=lansiluote] run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"请按照指示操作","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score tutorial system matches 304 if entity @a[tag=click,scores={sneak=1..}] as @e[tag=hit,tag=lansiluote,tag=t_minion] run tag @s add t_pass
execute if score tutorial system matches 304 unless entity @e[tag=hit,tag=t_pass,tag=lansiluote] run title @s clear
execute if score tutorial system matches 304 unless entity @e[tag=hit,tag=t_pass,tag=lansiluote] run title @s times 0 1 10
execute if score tutorial system matches 304 unless entity @e[tag=hit,tag=t_pass,tag=lansiluote] run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"请按照指示操作","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score tutorial system matches 324 if entity @a[tag=click,scores={sneak=0}] as @e[tag=hit,tag=t_endround] run tag @s add t_pass
execute if score tutorial system matches 324 unless entity @e[tag=hit,tag=t_pass,tag=t_endround] run title @s clear
execute if score tutorial system matches 324 unless entity @e[tag=hit,tag=t_pass,tag=t_endround] run title @s times 0 1 10
execute if score tutorial system matches 324 unless entity @e[tag=hit,tag=t_pass,tag=t_endround] run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"请按照指示操作","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

tag @e remove hit
tag @s remove click