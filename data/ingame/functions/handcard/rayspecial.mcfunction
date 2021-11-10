execute if entity @e[tag=ray,scores={cardid=1040}] unless score @s attack matches 5.. run tag @s add deny
#文字狱
execute if entity @e[tag=ray,scores={cardid=51080}] unless score @s recover matches 1..2 run tag @s add deny
#下凡
execute if entity @e[tag=ray,scores={cardid=51070}] unless score @e[tag=targetmascot,limit=1] roundusedcard matches 1.. if score @s hp >= @s hplimit run tag @s add deny
#裁决