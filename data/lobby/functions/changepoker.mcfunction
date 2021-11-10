tag @s add click
replaceitem entity @s weapon.offhand air
clear @s gold_ingot
replaceitem entity @s[tag=!playing] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"鼠标\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"准星瞄准单位\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"右键与之互动\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["cursor"],CustomModelData:1} 1
replaceitem entity @s[tag=playing] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"右键选择或禁用，潜行+右键查看信息，[f]键刷新游戏牌\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"准星瞄准随从或卡牌\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"右键与之互动\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"右键进行选择或禁用\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"潜行+右键查看信息\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"[f]键/切换副手刷新游戏牌卡池\",\"color\":\"#FFF68F\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"首次免费，第二次消耗10金币\",\"color\":\"#FFF68F\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次刷新消耗翻倍，至上限81920金币\",\"color\":\"#FFF68F\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["cursor","control","othercontrol"],CustomModelData:1} 1

execute as @s[tag=playing] if score system pause matches 2 if score system step matches 5 unless score @s deckcount matches 8.. unless score @s money < @s cost run tag @s add pass
execute as @s[tag=pass] run scoreboard players operation @s money -= @s cost


execute if score system pause matches 2 if score system step matches 5 unless score @s deckcount matches 8.. as @s[tag=playing] run title @s clear
execute if score system pause matches 2 if score system step matches 5 unless score @s deckcount matches 8.. as @s[tag=playing] run title @s times 0 20 5
execute if score system pause matches 2 if score system step matches 5 unless score @s deckcount matches 8.. as @s[tag=playing,tag=!pass] run title @s title [{"text":"卡池","color":"#FF4500","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"替换失败！","color":"#FF4500"}]
execute if score system pause matches 2 if score system step matches 5 unless score @s deckcount matches 8.. as @s[tag=playing,tag=!pass] run title @s subtitle [{"text":"  需要花费","color":"#FFF68F"},{"score":{"objective":"cost","name":"@s"},"color":"#FFF68F","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"金币！","color":"#FFF68F"}]
execute if score system pause matches 2 if score system step matches 5 unless score @s deckcount matches 8.. as @s[tag=playing,tag=pass] run title @s title [{"text":"卡池","color":"#98FB98","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"替换成功！","color":"#98FB98"}]
execute if score system pause matches 2 if score system step matches 5 unless score @s deckcount matches 8.. as @s[tag=playing,tag=pass] run title @s subtitle [{"text":"  本次花费","color":"#FFF68F"},{"score":{"objective":"cost","name":"@s"},"color":"#FFF68F","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"金币！","color":"#FFF68F"}]


execute if score system pause matches 2 if score system step matches 5 unless score @s deckcount matches 8.. as @s[tag=playing,tag=pass] run playsound minecraft:entity.player.levelup block @s ~ ~ ~ 3 1 1
execute as @s[tag=playing,tag=!pass] run playsound minecraft:block.note_block.didgeridoo block @s ~ ~ ~ 3 1 1
execute as @s[tag=pass] if score @s cost matches ..81919 run scoreboard players operation @s cost += @s cost
execute as @s[tag=pass] if score @s changetime matches 0 run scoreboard players add @s cost 10
execute as @s[tag=pass] run scoreboard players add @s changetime 1
execute as @s[tag=pass] as @e[tag=card,tag=display] if score @s ownedby = @a[tag=pass,limit=1] playernumber run tag @s add leftout
execute as @e[tag=leftout] run function lobby:createdeck/cardelimination
execute as @e[tag=leftout] at @s run particle dust 0 0.4 0.4 0.4 ~ ~ ~ 0.3 0.3 0.3 0 500 normal
kill @e[tag=leftout]
execute if entity @s[tag=pass] run function lobby:display/displaycard
tag @s remove pass
tag @s remove click