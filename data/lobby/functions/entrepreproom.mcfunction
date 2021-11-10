
team leave @a
tag @a remove onturn
tag @a remove carduser
tag @a remove dmgimmune
tag @a remove manaban
tag @a remove forceatktarget

execute if score system mode matches 2 run fill -7 6 -2 -1 10 -2 air
function gamedata:resetscore
scoreboard players reset @e bet
scoreboard players reset fightbet system
scoreboard players reset slotmachine system
data modify storage minecraft:buff List set value []
scoreboard players set eventplaying pause 0
scoreboard players set system round 0
scoreboard players set system step 0
scoreboard players set system bancount 0
scoreboard players add system gameid 1
scoreboard players add system2 gameid 1
scoreboard players set @a[tag=playing] playernumber 0
xp add @a[tag=playing] -8999 levels
scoreboard players set @a[tag=playing] cost 0
scoreboard players set @a[tag=playing] changetime 0
scoreboard players set @a[tag=playing] hoverhotbar 0
scoreboard players set @a[tag=playing] step 0
scoreboard players set @a[tag=playing] sneak 0
scoreboard players set @a[tag=playing] deckcount 0
scoreboard players set betclock gamecd 1200

function lobby:who_goes_first

execute as @e[tag=mascot1] if score @s playerid = @a[tag=playing,scores={playernumber=1},limit=1] playerid run kill @s
execute as @e[tag=mascot1] if score @s playerid = @a[tag=playing,scores={playernumber=2},limit=1] playerid run kill @s

scoreboard players operation @a[tag=playing,scores={playernumber=1..2}] gameid = system gameid
scoreboard players set @a[tag=playing,scores={playernumber=1..2}] minioncount 0
clear @a[tag=playing,scores={playernumber=1..2}]

#replaceitem entity @a[scores={playernumber=1..2}] hotbar.0 minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"右键选择或禁用，潜行+右键查看信息，[f]键刷新游戏牌\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"准星瞄准随从或卡牌\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"右键与之互动\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"右键进行选择或禁用\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"潜行+右键查看信息\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"[f]键/切换副手刷新游戏牌卡池\",\"color\":\"#FFF68F\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"首次免费，第二次消耗10金币\",\"color\":\"#FFF68F\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"每次刷新消耗翻倍，至上限81920金币\",\"color\":\"#FFF68F\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["cursor","control","othercontrol"],CustomModelData:1} 1
spreadplayers 9 4 1 1 false @a[tag=spectator]
scoreboard players reset start gamecd
scoreboard players set system gamecd 60
scoreboard players set system system 1
scoreboard players set system pause 0




tp @a[tag=playing,scores={playernumber=1}] -205 38 27
tp @a[tag=playing,scores={playernumber=2}] -201 38 27
title @a[tag=playing,scores={playernumber=1..2}] reset
title @a[tag=playing,scores={playernumber=1..2}] times 10 40 10
title @a[tag=playing,scores={playernumber=1..2}] title {"text":"请稍候","color":"white","bold":"true"}

tellraw @a [{"text":"[系统]  ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"游戏开始","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
