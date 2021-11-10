clear @a[tag=playing]
title @a clear
title @a times 0 2 0
title @a title ""
title @a subtitle ""
give @a minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"鼠标\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"准星瞄准单位\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"右键与之互动\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["cursor"],CustomModelData:1} 1
#give @a minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"无义的纳米刀\",\"color\":\"light_purple\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"右键冲刺\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"击飞附近玩家\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Tags:["dash","2stage"],CustomModelData:16} 1
#execute as @a run function lobby:give_go_first
spreadplayers -203 30 2 2 under 26 false @a[tag=ingame]
tag @a remove playing
tag @a remove spectating
tag @a remove ingame
tag @a remove onturn
tag @a remove at_dmgto
tag @a remove at_dmgfrom
tag @a remove carduser
tag @a remove cardtarget
tag @a remove dmgimmune
tag @a remove manaban
tag @a remove forceatktarget
kill @e[tag=card]
kill @e[tag=minion]
kill @e[tag=mascot]
kill @e[tag=centre]
kill @e[tag=buffstorage]
kill @e[tag=data]
kill @e[tag=name]
kill @e[tag=caster2]
kill @e[tag=caster]
kill @e[tag=deck]
kill @e[tag=dcpile]
kill @e[tag=endround]

setblock -203 36 38 air
scoreboard players set roundminiondied number 0
scoreboard players set system gamecd 0
scoreboard players set system system 0
scoreboard players set system round 0
scoreboard players set system step 0
scoreboard players set system bancount 0
scoreboard players set roundtime2 system 0
scoreboard players reset @e bet
scoreboard players add system gameid 1
execute as @a run function lobby:usedeck_reset
function gamedata:resetscore

xp add @a -8999 levels
gamemode adventure @a[gamemode=spectator]




data modify storage minecraft:minion1buff List set value []
data modify storage minecraft:minion2buff List set value []
data modify storage minecraft:minion3buff List set value []
data modify storage minecraft:minion4buff List set value []
data modify storage minecraft:minion5buff List set value []
data modify storage minecraft:minion6buff List set value []
data modify storage minecraft:minion1buff List2 set value []
data modify storage minecraft:minion2buff List2 set value []
data modify storage minecraft:minion3buff List2 set value []
data modify storage minecraft:minion4buff List2 set value []
data modify storage minecraft:minion5buff List2 set value []
data modify storage minecraft:minion6buff List2 set value []