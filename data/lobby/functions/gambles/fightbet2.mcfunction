scoreboard players set blazehp system 0
scoreboard players set totalhp system 0
execute as @e[type=blaze] store result score @s hp run data get entity @s Health 4
execute as @e[type=snow_golem] store result score @s hp run data get entity @s Health 10
scoreboard players operation blazehp system += @e[type=blaze] hp
scoreboard players operation totalhp system += @e[type=snow_golem] hp
scoreboard players operation totalhp system += @e[type=blaze] hp
execute store result bossbar minecraft:fightbet value run scoreboard players get blazehp system
execute store result bossbar minecraft:fightbet max run scoreboard players get totalhp system
execute unless entity @e[type=snow_golem] as @e[tag=reportholder,scores={bet=1}] run tag @s add win
execute unless entity @e[type=snow_golem] as @e[tag=reportholder,scores={bet=2}] run tag @s add lose
execute unless entity @e[type=blaze] as @e[tag=reportholder,scores={bet=2}] run tag @s add win
execute unless entity @e[type=blaze] as @e[tag=reportholder,scores={bet=1}] run tag @s add lose
execute as @a if score @s playerid = @e[tag=win,limit=1] playerid run tag @s add online
execute as @a if score @s playerid = @e[tag=lose,limit=1] playerid run tag @s add online
execute if entity @e[tag=win] as @a[tag=online] run scoreboard players add @s money 200
execute if entity @e[tag=win] as @a[tag=online] run clear @s gold_ingot
execute if entity @e[tag=win] unless entity @a[tag=online] run scoreboard players set @e[tag=win] storedbet -100
scoreboard players reset @e[tag=win] bet
scoreboard players reset @e[tag=lose] bet
execute if entity @e[tag=win] as @a[tag=online] run tellraw @s [{"text":"[冰火大战]  ","color":"#FF6347","bold":"true"},{"text":"你猜对了！","color":"white","bold":true},{"text":" 获得","color":"white","bold":false},{"text":"200","color":"#98FB98","bold":false},{"text":"金币！","color":"white","bold":false}]
execute if entity @e[tag=win] as @a[tag=online] run playsound minecraft:entity.player.levelup block @s ~ ~ ~ 3 1.4 1
execute if entity @e[tag=lose] as @a[tag=online] run tellraw @s [{"text":"[冰火大战]  ","color":"#FF6347","bold":"true"},{"text":"你猜错了！","color":"white"}]
execute if entity @e[tag=lose] as @a[tag=online] run playsound minecraft:block.beacon.deactivate block @s ~ ~ ~ 3 2 1
execute unless entity @e[type=snow_golem] if entity @e[tag=win] as @e[tag=fightbet,tag=blaze] at @s run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:0,Explosions:[{Type:0,Colors:[I;15662848],FadeColors:[I;16711680]}]}},id:"minecraft:firework_rocket",Count:1},Life:0,LifeTime:3}
execute unless entity @e[type=blaze] if entity @e[tag=win] as @e[tag=fightbet,tag=snow_golem] at @s run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:0,Explosions:[{Type:0,Colors:[I;15662848],FadeColors:[I;16711680]}]}},id:"minecraft:firework_rocket",Count:1},Life:0,LifeTime:3}
execute if entity @e[tag=win] run scoreboard players set @e[type=blaze] dying 40
execute if entity @e[tag=win] run scoreboard players set @e[type=snow_golem] dying 40
execute if entity @e[tag=lose] run scoreboard players set @e[type=blaze] dying 40
execute if entity @e[tag=lose] run scoreboard players set @e[type=snow_golem] dying 40
execute if entity @e[tag=win] run scoreboard players set fightbet system 0
execute if entity @e[tag=win] run scoreboard players reset blazehp system
execute if entity @e[tag=win] run scoreboard players reset totalhp system
execute if entity @e[tag=win] run bossbar remove minecraft:fightbet
execute if entity @e[tag=lose] run scoreboard players set fightbet system 0
execute if entity @e[tag=lose] run scoreboard players reset blazehp system
execute if entity @e[tag=lose] run scoreboard players reset totalhp system
execute if entity @e[tag=lose] run bossbar remove minecraft:fightbet

tag @e remove win
tag @e remove lose
tag @e remove online