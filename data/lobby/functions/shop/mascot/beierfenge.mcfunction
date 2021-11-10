
clear @s red_dye
execute if score @s[tag=!own_beierfenge] money matches 300.. run item replace entity @s enderchest.3 with minecraft:red_dye{display:{Lore:['{"text":"300金币","color":"#FFF68F","italic":"false"}','{"text":"点击购买","color":"green","italic":"false"}'],Name:'[{"text":"贝尔芬格","color":"#FFFFF0","bold":"true","italic":"false"}]'},CustomModelData:4}
execute unless score @s money matches 300.. run item replace entity @s enderchest.3 with minecraft:red_dye{display:{Lore:['{"text":"300金币","color":"#FFF68F","italic":"false"}','{"text":"金币不足","color":"red","italic":"false"}'],Name:'[{"text":"贝尔芬格","color":"#FFFFF0","bold":"true","italic":"false"}]'},CustomModelData:4}
execute if entity @s[tag=own_beierfenge] unless score @s mascot matches 4 run item replace entity @s enderchest.3 with minecraft:red_dye{display:{Lore:['{"text":"300金币","color":"#FFF68F","italic":"false"}','{"text":"点击使用","color":"aqua","italic":"false"}'],Name:'[{"text":"贝尔芬格","color":"#FFFFF0","bold":"true","italic":"false"}]'},CustomModelData:4}
execute if entity @s[tag=own_beierfenge] if score @s mascot matches 4 run item replace entity @s enderchest.3 with minecraft:red_dye{display:{Lore:['{"text":"300金币","color":"#FFF68F","italic":"false"}','{"text":"就绪...","color":"#00BFFF","italic":"false"}'],Name:'[{"text":"贝尔芬格","color":"#FFFFF0","bold":"true","italic":"false"}]'},CustomModelData:4}

#——————————————————————————————————————————————————————————————————————————————————————————————————————————————————
execute if score @s shopping matches 1 if score @s mascot matches 4 run tag @s[tag=own_beierfenge,scores={shopping=1}] add using
execute if score @s shopping matches 1 unless score @s[tag=!own_beierfenge,scores={shopping=1}] money matches 300.. run tag @s add poor
execute if score @s shopping matches 1 if score @s[tag=!own_beierfenge,scores={shopping=1}] money matches 300.. run tag @s add buy
execute if score @s shopping matches 1 unless score @s mascot matches 4 run tag @s[tag=own_beierfenge,scores={shopping=1}] add use
execute if score @s shopping matches 1 unless score @s mascot matches 4 run scoreboard players set @s[tag=own_beierfenge,scores={shopping=1}] mascot 4
execute if score @s shopping matches 1 run tag @s[tag=buy] add bought
execute if score @s shopping matches 1 run scoreboard players remove @s[tag=buy] money 300
execute if score @s shopping matches 1 run tag @s[tag=buy] add own_beierfenge
execute if score @s shopping matches 1 run tellraw @s[tag=buy] [{"text":"[英雄商店]  ","color":"#00FF7F","bold":"true"},{"text":"你购买了","color":"white"},{"text":"贝尔芬格","color":"yellow","bold":"true"},{"text":"！","color":"white"}]
execute if score @s shopping matches 1 run tellraw @s[tag=use] [{"text":"[英雄商店]  ","color":"#00FF7F","bold":"true"},{"text":"贝尔芬格","color":"yellow","bold":"true"},{"text":"准备就绪！","color":"white"}]
execute if score @s shopping matches 1 run tag @s remove buy