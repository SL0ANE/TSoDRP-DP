execute if score tutorial system matches 207 if entity @e[tag=selectedcard,scores={handorder=1}] if entity @e[tag=hit,tag=zabing2,tag=t_minion] run function lobby:tutorial/cardused



execute if entity @s[tag=!t_usecardpass] run title @s clear
execute if entity @s[tag=!t_usecardpass] run title @s times 0 1 10
execute if entity @s[tag=!t_usecardpass] run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"请按照指示操作","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @s remove t_usecardpass
tag @e remove summon
