scoreboard players set usecard pause 0
execute if score system waiting matches 1.. run scoreboard players add usecard pause 1

execute if entity @e[tag=card,tag=discovered,tag=!unpicked,tag=!picked] run scoreboard players add usecard pause 1
execute if entity @e[scores={cardcasting2=1..}] run scoreboard players add usecard pause 1
execute if entity @e[scores={casting=1..}] run scoreboard players add usecard pause 1
execute if entity @e[scores={casting2=1..}] run scoreboard players add usecard pause 1
execute if entity @e[scores={attacking=1..}] run scoreboard players add usecard pause 1
execute if entity @e[scores={supercasting=1..}] run scoreboard players add usecard pause 1
execute if entity @e[scores={switching=1..}] run scoreboard players add usecard pause 1
execute if entity @e[scores={trapcasting=1..}] run scoreboard players add usecard pause 1
execute if entity @e[scores={cardcasting=1..}] run scoreboard players add usecard pause 1
execute if entity @e[scores={cardcasttime=1..}] run scoreboard players add usecard pause 1
execute if entity @e[scores={drawing=1..}] run scoreboard players add usecard pause 1
execute if entity @e[scores={dmgdealing=1..}] run scoreboard players add usecard pause 1
execute if entity @e[scores={dmgtaking=1..}] run scoreboard players add usecard pause 1
execute if entity @e[scores={healing=1..}] run scoreboard players add usecard pause 1
execute if entity @e[scores={stunremoving=1..}] run scoreboard players add usecard pause 1
execute if entity @e[scores={rcvremoving=1..}] run scoreboard players add usecard pause 1
execute if entity @e[scores={folding=1..}] run scoreboard players add usecard pause 1
execute if entity @e[scores={cardcasting3=1..}] run scoreboard players add usecard pause 1
#此function是为检测所有除使用牌中进行中的事件




execute if entity @e[scores={step=1..},tag=mascot] run scoreboard players add usecard pause 1
