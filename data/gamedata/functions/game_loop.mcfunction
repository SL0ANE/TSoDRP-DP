execute as @a run function ingame:hoverhotbar
#设置分数为玩家悬停的物品栏

#execute as @a[advancements={records/root=false}] run advancement grant @s only minecraft:records/root
execute as @a[advancements={daily/root=false}] run advancement grant @s only minecraft:daily/root

#——————————————————————————————————————————
execute if score system deck matches 1.. run function gamedata:deckbuildroom1
execute if score system deck matches 2.. run function gamedata:deckbuildroom2
execute as @a[tag=preparing] unless entity @s[x=-191.5,y=16,z=57,dx=18,dy=16,dz=-32] unless entity @s[x=-214.5,y=16,z=57,dx=-18,dy=16,dz=-32] run tag @s remove preparing

function gamedata:tutorial


#——————————————————————————————————————————



execute as @a[x=-204,y=25,z=65,dx=2,dy=0,dz=2] run title @s clear
execute as @a[x=-204,y=25,z=65,dx=2,dy=0,dz=2] run title @s times 25 70 25
execute as @a[x=-204,y=25,z=65,dx=2,dy=0,dz=2] run title @s title {"text":"欢迎来到次元召唤","color":"#40E0D0"}
execute as @a[x=-204,y=25,z=65,dx=2,dy=0,dz=2] at @s run playsound minecraft:entity.skeleton_horse.gallop_water block @s ~ ~ ~ 3 0.8 1
execute as @a[x=-204,y=25,z=65,dx=2,dy=0,dz=2,advancements={records/root=false}] run advancement grant @s only minecraft:records/root

execute as @e[scores={throwmoney=1..}] at @s run function gamedata:throwmoney
execute as @e[tag=money,nbt={Age:50s}] run tag @s add pickable
execute as @e[tag=word,type=area_effect_cloud] run data merge entity @s {Age:1}
execute as @a at @s if data entity @s Inventory[{tag:{Tags:["clear"]}}] run function gamedata:pickupmoney
execute if score reload system matches 1.. run scoreboard players add reload system 1
execute if score reload system matches 1.. run function gamedata:reload2
#execute as @e[tag=packswitch2,name=""] run function lobby:packselected
#reload fixer
execute as @a unless score @s playerid matches 1.. positioned 23 4 12 run function gamedata:playerid
execute as @a if score @s playerid matches 1.. run function gamedata:playerid2
scoreboard players add honorloop gamecd 1
execute if score honorloop gamecd matches 101 run scoreboard players set honorloop gamecd 1
execute as @a if score honorloop gamecd matches 100 run function gamedata:honor
execute as @a if score @s leavegame matches 3 if score honorloop gamecd matches 100 run function gamedata:holderdataset
execute as @a unless score @s deck matches 1.. run item replace entity @s enderchest.0 with minecraft:lime_shulker_box{BlockEntityTag:{Items:[{Slot:26b,id:"minecraft:bedrock",Count:1b}]},Tags:["deck1"],display:{Name:"[{\"text\":\"套牌一\"}]"}}
execute as @a unless score @s deck matches 1.. run item replace entity @s enderchest.1 with minecraft:lime_shulker_box{BlockEntityTag:{Items:[{Slot:26b,id:"minecraft:bedrock",Count:1b}]},Tags:["deck2"],display:{Name:"[{\"text\":\"套牌二\"}]"}}
execute as @a unless score @s deck matches 1.. run item replace entity @s enderchest.2 with minecraft:lime_shulker_box{BlockEntityTag:{Items:[{Slot:26b,id:"minecraft:bedrock",Count:1b}]},Tags:["deck3"],display:{Name:"[{\"text\":\"套牌三\"}]"}}
execute as @a unless score @s deck matches 1.. run item replace entity @s enderchest.3 with minecraft:lime_shulker_box{BlockEntityTag:{Items:[{Slot:26b,id:"minecraft:bedrock",Count:1b}]},Tags:["deck4"],display:{Name:"[{\"text\":\"套牌四\"}]"}}
execute as @a unless score @s deck matches 1.. run item replace entity @s enderchest.4 with minecraft:lime_shulker_box{BlockEntityTag:{Items:[{Slot:26b,id:"minecraft:bedrock",Count:1b}]},Tags:["deck5"],display:{Name:"[{\"text\":\"套牌五\"}]"}}
execute as @a unless score @s deck matches 1.. run scoreboard players set @s deck 1



execute if score system system matches 1.. run function betting:betting
execute if score system system matches 1.. run function ingame:ingame
function lobby:lobby
execute as @a at @s if block ~ ~-1.01 ~ minecraft:sea_lantern if block ~ ~-2.01 ~ minecraft:gold_block run playsound minecraft:entity.player.breath block @a[tag=!ingame] ~ ~ ~ 3 0.4 1
execute as @a at @s if block ~ ~-1.01 ~ minecraft:sea_lantern if block ~ ~-2.01 ~ minecraft:gold_block run particle cloud ~ ~0.1 ~ 0.4 0.4 0.4 0.01 70 force @a[tag=!ingame]
execute as @a at @s if block ~ ~-1.01 ~ minecraft:sea_lantern if block ~ ~-2.01 ~ minecraft:gold_block run particle cloud ~ ~0.4 ~ 0.4 0.6 0.4 0.02 70 force @a[tag=!ingame]
execute as @a at @s if block ~ ~-1.01 ~ minecraft:sea_lantern if block ~ ~-2.01 ~ minecraft:gold_block run particle cloud ~ ~0.7 ~ 0.4 0.8 0.4 0.03 70 force @a[tag=!ingame]
execute as @a at @s if block ~ ~-1.01 ~ minecraft:sea_lantern if block ~ ~-2.01 ~ minecraft:gold_block run particle cloud ~ ~1 ~ 0.4 1 0.4 0.04 70 force @a[tag=!ingame]
execute as @a at @s if block ~ ~-1.01 ~ minecraft:sea_lantern if block ~ ~-2.01 ~ minecraft:gold_block run effect give @s minecraft:levitation 1 10 true
execute as @a at @s run function gamedata:announcement1



#玩家背包按钮

execute as @e[type=minecraft:item,tag=!money,tag=!gamemob] run kill @s

scoreboard players set @a rightclick 0
scoreboard players set @a rightclick2 0
execute as @a unless score @s sneak matches 0 run scoreboard players set @s sneak 0