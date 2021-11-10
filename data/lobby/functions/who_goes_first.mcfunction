tag @a[sort=random,limit=1,tag=playing,tag=!pick1,tag=!pick2,scores={playernumber=0}] add pick1
tag @a[sort=random,limit=1,tag=playing,tag=!pick1,tag=!pick2,scores={playernumber=0}] add pick2

execute as @a[tag=pick1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["gamemob","random","1","summon"]}
execute as @a[tag=pick1,tag=go_first] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["gamemob","random","1","summon"]}
execute as @a[tag=pick1,tag=go_first] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["gamemob","random","1","summon"]}

execute as @a[tag=pick2] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["gamemob","random","2","summon"]}
execute as @a[tag=pick2,tag=go_first] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["gamemob","random","2","summon"]}
execute as @a[tag=pick2,tag=go_first] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["gamemob","random","2","summon"]}
tag @e[tag=summon,sort=random,limit=1] add pick3
execute if entity @e[tag=pick3,tag=1] run scoreboard players set @a[tag=pick1] playernumber 2
execute if entity @e[tag=pick3,tag=1] run scoreboard players set @a[tag=pick2] playernumber 1
execute if entity @e[tag=pick3,tag=1] as @a[tag=pick1,tag=go_first] run scoreboard players remove @s[scores={go_first=1..}] go_first 1
execute if entity @e[tag=pick3,tag=1] as @a[tag=pick1,tag=go_first] run tellraw @s {"text":"争抢先手已生效","color":"green"}
execute if entity @e[tag=pick3,tag=1] as @a[tag=pick1,tag=go_first] run playsound minecraft:entity.player.levelup block @s ~ ~ ~ 3 1 1
execute if entity @e[tag=pick3,tag=1] as @a[tag=pick2,tag=go_first] run tellraw @s {"text":"争抢先手未生效","color":"red"}
execute if entity @e[tag=pick3,tag=1] as @a[tag=pick2,tag=go_first] run playsound minecraft:block.beacon.deactivate block @s ~ ~ ~ 3 2 1
execute if entity @e[tag=pick3,tag=2] run scoreboard players set @a[tag=pick2] playernumber 2
execute if entity @e[tag=pick3,tag=2] run scoreboard players set @a[tag=pick1] playernumber 1
execute if entity @e[tag=pick3,tag=2] as @a[tag=pick2,tag=go_first] run scoreboard players remove @s[scores={go_first=1..}] go_first 1
execute if entity @e[tag=pick3,tag=2] as @a[tag=pick2,tag=go_first] run tellraw @s {"text":"争抢先手已生效","color":"green"}
execute if entity @e[tag=pick3,tag=2] as @a[tag=pick2,tag=go_first] run playsound minecraft:entity.player.levelup block @s ~ ~ ~ 3 1 1
execute if entity @e[tag=pick3,tag=2] as @a[tag=pick1,tag=go_first] run tellraw @s {"text":"争抢先手未生效","color":"red"}
execute if entity @e[tag=pick3,tag=2] as @a[tag=pick1,tag=go_first] run playsound minecraft:block.beacon.deactivate block @s ~ ~ ~ 3 2 1
tag @a[tag=pick1] remove go_first
tag @a[tag=pick2] remove go_first
kill @e[tag=summon]
tag @a remove pick1
tag @a remove pick2
tag @e remove pick3
tag @e remove summon