
clear @s cooked_porkchop
execute if score @s gameplayed matches 1.. if score @s money matches 1000.. run item replace entity @s enderchest.0 with minecraft:cooked_porkchop{display:{Lore:['{"text":"1000金币","color":"#FFF68F","italic":"false"}','{"text":"清除你的战绩，包括场次，胜率，胜点等。","color":"#00EEEE","bold":"true","italic":"false"}','{"text":"注意！这个操作将不可撤回！","color":"yellow","italic":"true","bold":"true"}','{"text":"点击购买","color":"green","italic":"false"}'],Name:'[{"text":"重置战绩","color":"#E0FFFF","bold":"true","italic":"false"}]'}}
execute unless score @s gameplayed matches 1.. if score @s money matches 1000.. run item replace entity @s enderchest.0 with minecraft:cooked_porkchop{display:{Lore:['{"text":"1000金币","color":"#FFF68F","italic":"false"}','{"text":"清除你的战绩，包括场次，胜率，胜点等。","color":"#00EEEE","bold":"true","italic":"false"}','{"text":"注意！这个操作将不可撤回！","color":"yellow","italic":"true","bold":"true"}','{"text":"无法购买","color":"red","italic":"false"}'],Name:'[{"text":"重置战绩","color":"#E0FFFF","bold":"true","italic":"false"}]'}}
execute unless score @s money matches 1000.. run item replace entity @s enderchest.0 with minecraft:cooked_porkchop{display:{Lore:['{"text":"1000金币","color":"#FFF68F","italic":"false"}','{"text":"清除你的战绩，包括场次，胜率，胜点等。","color":"#00EEEE","bold":"true","italic":"false"}','{"text":"注意！这个操作将不可撤回！","color":"yellow","italic":"true","bold":"true"}','{"text":"金币不足","color":"red","italic":"false"}'],Name:'[{"text":"重置战绩","color":"#E0FFFF","bold":"true","italic":"false"}]'}}
#——————————————————————————————————————————————————————————————————————————————————————————————————————————————————
execute if score @s shopping matches 2 unless score @s[scores={shopping=2}] money matches 1000.. run tag @s add poor
execute if score @s shopping matches 2 if score @s gameplayed matches 1.. if score @s[scores={shopping=2}] money matches 1000.. run tag @s add buy
execute if score @s shopping matches 2 unless score @s gameplayed matches 1.. if score @s[scores={shopping=2}] money matches 1000.. run tag @s add cantbuy
execute if score @s shopping matches 2 run tag @s[tag=buy] add bought
execute if score @s shopping matches 2 run scoreboard players remove @s[tag=buy] money 1000
execute if score @s shopping matches 2 run scoreboard players set @s[tag=buy] winrate 0
execute if score @s shopping matches 2 run scoreboard players set @s[tag=buy] win 0
execute if score @s shopping matches 2 run scoreboard players set @s[tag=buy] lose 0
execute if score @s shopping matches 2 run scoreboard players set @s[tag=buy] gamedraw 0
execute if score @s shopping matches 2 run scoreboard players set @s[tag=buy] gameplayed 0
execute if score @s shopping matches 2 run scoreboard players set @s[tag=buy] scores 0
execute if score @s shopping matches 2 run clear @s[tag=buy] emerald
execute if score @s shopping matches 2 run clear @s[tag=buy] gold_ingot
execute if score @s shopping matches 2 run tellraw @s[tag=buy] [{"text":"[道具商店]  ","color":"#00FF7F","bold":"true"},{"text":"你购买了","color":"white"},{"text":"重置战绩","color":"yellow","bold":"true"},{"text":"，战绩已全部清空！","color":"white"}]
execute if score @s shopping matches 2 run tellraw @s[tag=cantbuy] [{"text":"[道具商店]  ","color":"#FF6347","bold":"true"},{"text":"你还没有任何战绩，快去开始一场对局吧","color":"white"},{"text":"！","color":"white"}]

execute if score @s shopping matches 2 run tag @s remove buy
execute if score @s shopping matches 2 run tag @s remove cantbuy