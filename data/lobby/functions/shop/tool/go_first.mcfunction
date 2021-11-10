
clear @s enchanted_golden_apple
execute if score @s money matches 200.. run item replace entity @s enderchest.1 with minecraft:enchanted_golden_apple{display:{Lore:['{"text":"200金币","color":"#FFF68F","italic":"false"}','{"text":"下一局对战有25%的额外几率获得先手","color":"#00EEEE","bold":"true","italic":"false"}','{"text":"可在对局开始前使用","color":"yellow","italic":"true","bold":"true"}','{"text":"点击购买","color":"green","italic":"false"}'],Name:'[{"text":"争抢先手","color":"#E0FFFF","bold":"true","italic":"false"}]'}}
#execute unless score @s gameplayed matches 1.. if score @s money matches 200.. run item replace entity @s enderchest.1 with minecraft:enchanted_golden_apple{display:{Lore:['{"text":"200金币","color":"#FFF68F","italic":"false"}','{"text":"下一局对战有25%的额外几率获得先手","color":"#00EEEE","bold":"true","italic":"false"}','{"text":"可在对局开始前使用","color":"yellow","italic":"true","bold":"true"}','{"text":"无法购买","color":"red","italic":"false"}'],Name:'[{"text":"争抢先手","color":"#E0FFFF","bold":"true","italic":"false"}]'}}
execute unless score @s money matches 200.. run item replace entity @s enderchest.1 with minecraft:enchanted_golden_apple{display:{Lore:['{"text":"200金币","color":"#FFF68F","italic":"false"}','{"text":"下一局对战有25%的额外几率获得先手","color":"#00EEEE","bold":"true","italic":"false"}','{"text":"可在对局开始前使用","color":"yellow","italic":"true","bold":"true"}','{"text":"金币不足","color":"red","italic":"false"}'],Name:'[{"text":"争抢先手","color":"#E0FFFF","bold":"true","italic":"false"}]'}}
#——————————————————————————————————————————————————————————————————————————————————————————————————————————————————
execute if score @s shopping matches 2 unless score @s[scores={shopping=2}] money matches 200.. run tag @s add poor
execute if score @s shopping matches 2 if score @s gameplayed matches 1.. if score @s[scores={shopping=2}] money matches 200.. run tag @s add buy
#execute if score @s shopping matches 2 unless score @s gameplayed matches 1.. if score @s[scores={shopping=2}] money matches 200.. run tag @s add cantbuy
execute if score @s shopping matches 2 run tag @s[tag=buy] add bought
execute if score @s shopping matches 2 run scoreboard players remove @s[tag=buy] money 200
execute if score @s shopping matches 2 run scoreboard players add @s[tag=buy] go_first 1
execute if score @s shopping matches 2 run clear @s[tag=buy] emerald
execute if score @s shopping matches 2 as @s[tag=buy] run function lobby:give_go_first
execute if score @s shopping matches 2 run tellraw @s[tag=buy] [{"text":"[道具商店]  ","color":"#00FF7F","bold":"true"},{"text":"你购买了","color":"white"},{"text":"争抢先手","color":"yellow","bold":"true"},{"text":"，你现在拥有","color":"white"},{"score":{"objective":"go_first","name":"@s[tag=buy]"},"color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"个该道具！","color":"white"}]
#execute if score @s shopping matches 2 run tellraw @s[tag=cantbuy] [{"text":"[道具商店]  ","color":"#FF6347","bold":"true"},{"text":"你还没有任何战绩，快去开始一场对局吧","color":"white"},{"text":"！","color":"white"}]

execute if score @s shopping matches 2 run tag @s remove buy
execute if score @s shopping matches 2 run tag @s remove cantbuy