
clear @s red_dye
execute if score @s[tag=!own_luxifa] money matches 500.. run item replace entity @s enderchest.1 with minecraft:red_dye{display:{Lore:['{"text":"500金币","color":"#FFF68F","italic":"false"}','{"text":"点击购买","color":"green","italic":"false"}'],Name:'[{"text":"路西法","color":"#FFFFF0","bold":"true","italic":"false"}]'},CustomModelData:2}
execute unless score @s money matches 500.. run item replace entity @s enderchest.1 with minecraft:red_dye{display:{Lore:['{"text":"500金币","color":"#FFF68F","italic":"false"}','{"text":"金币不足","color":"red","italic":"false"}'],Name:'[{"text":"路西法","color":"#FFFFF0","bold":"true","italic":"false"}]'},CustomModelData:2}
execute if entity @s[tag=own_luxifa] unless score @s mascot matches 2 run item replace entity @s enderchest.1 with minecraft:red_dye{display:{Lore:['{"text":"500金币","color":"#FFF68F","italic":"false"}','{"text":"点击使用","color":"aqua","italic":"false"}'],Name:'[{"text":"路西法","color":"#FFFFF0","bold":"true","italic":"false"}]'},CustomModelData:2}
execute if entity @s[tag=own_luxifa] if score @s mascot matches 2 run item replace entity @s enderchest.1 with minecraft:red_dye{display:{Lore:['{"text":"500金币","color":"#FFF68F","italic":"false"}','{"text":"就绪...","color":"#00BFFF","italic":"false"}'],Name:'[{"text":"路西法","color":"#FFFFF0","bold":"true","italic":"false"}]'},CustomModelData:2}

#——————————————————————————————————————————————————————————————————————————————————————————————————————————————————
execute if score @s shopping matches 1 if score @s mascot matches 2 run tag @s[tag=own_luxifa,scores={shopping=1}] add using
execute if score @s shopping matches 1 unless score @s[tag=!own_luxifa,scores={shopping=1}] money matches 500.. run tag @s add poor
execute if score @s shopping matches 1 if score @s[tag=!own_luxifa,scores={shopping=1}] money matches 500.. run tag @s add buy
execute if score @s shopping matches 1 unless score @s mascot matches 2 run tag @s[tag=own_luxifa,scores={shopping=1}] add use
execute if score @s shopping matches 1 unless score @s mascot matches 2 run scoreboard players set @s[tag=own_luxifa,scores={shopping=1}] mascot 2
execute if score @s shopping matches 1 run tag @s[tag=buy] add bought
execute if score @s shopping matches 1 run scoreboard players remove @s[tag=buy] money 500
execute if score @s shopping matches 1 run tag @s[tag=buy] add own_luxifa
execute if score @s shopping matches 1 run tellraw @s[tag=buy] [{"text":"[英雄商店]  ","color":"#00FF7F","bold":"true"},{"text":"你购买了","color":"white"},{"text":"路西法","color":"yellow","bold":"true"},{"text":"！","color":"white"}]
execute if score @s shopping matches 1 run tellraw @s[tag=use] [{"text":"[英雄商店]  ","color":"#00FF7F","bold":"true"},{"text":"路西法","color":"yellow","bold":"true"},{"text":"准备就绪！","color":"white"}]
execute if score @s shopping matches 1 run tag @s remove buy