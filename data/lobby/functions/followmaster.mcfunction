tag @s add 123
execute as @a if score @s playerid = @e[tag=123,limit=1] playerid run tag @s add 234

#execute at @s if entity @a[tag=234,distance=2..60] rotated ~ 0 unless block ~ ~-0.1 ~ #gamedata:transparent if block ^ ^ ^0.3 #gamedata:transparent run playsound minecraft:entity.phantom.flap block @a[tag=!234,distance=..8] ~ ~ ~ 0.5 2 0
#execute at @s if entity @a[tag=234,distance=2..60] rotated ~ 0 unless block ~ ~-0.1 ~ #gamedata:transparent if block ^ ^ ^0.3 #gamedata:transparent run playsound minecraft:entity.phantom.flap block @a[tag=234] ~ ~ ~ 1 2 0
#execute at @s if entity @a[tag=234,distance=2..60] rotated ~ 0 unless block ^ ^ ^0.3 #gamedata:transparent if block ~ ~0.1 ~ #gamedata:transparent run playsound minecraft:item.axe.strip block @a[tag=!234,distance=..8] ~ ~ ~ 0.5 0.1 0
#execute at @s if entity @a[tag=234,distance=2..60] rotated ~ 0 unless block ^ ^ ^0.3 #gamedata:transparent if block ~ ~0.1 ~ #gamedata:transparent run playsound minecraft:item.axe.strip block @a[tag=234] ~ ~ ~ 1 0.1 0




#execute as @a[tag=234] store result score @s y_axis run data get entity @s Pos[1] 100
#execute store result score @s y_axis run data get entity @s Pos[1] 100
#execute at @s if entity @a[tag=234,distance=2..60] facing entity @a[tag=234] feet rotated ~ 0 unless block ~ ~-0.1 ~ #gamedata:transparent if block ^ ^ ^0.3 #gamedata:transparent run tp ^ ^ ^0.25
#execute at @s if entity @a[tag=234,distance=10..60] facing entity @a[tag=234] feet rotated ~ 0 unless block ~ ~-0.1 ~ #gamedata:transparent if block ^ ^ ^0.3 #gamedata:transparent run tp ^ ^ ^0.25
#execute at @s if entity @a[tag=234,distance=20..60] facing entity @a[tag=234] feet rotated ~ 0 unless block ~ ~-0.1 ~ #gamedata:transparent if block ^ ^ ^0.3 #gamedata:transparent run tp ^ ^ ^0.25
#execute at @s if entity @a[tag=234,distance=30..60] facing entity @a[tag=234] feet rotated ~ 0 unless block ~ ~-0.1 ~ #gamedata:transparent if block ^ ^ ^0.3 #gamedata:transparent run tp ^ ^ ^0.25
#execute at @s if entity @a[tag=234,distance=45..60] facing entity @a[tag=234] feet rotated ~ 0 unless block ~ ~-0.1 ~ #gamedata:transparent if block ^ ^ ^0.3 #gamedata:transparent run tp ^ ^ ^0.25


#execute at @s rotated ~ 0 if block ^ ^ ^0.3 #gamedata:transparent if block ~ ~-0.15 ~ #gamedata:transparent run tp @s ~ ~-0.1 ~
#execute at @s rotated ~ 0 if block ^ ^ ^0.3 #gamedata:transparent if block ~ ~-0.15 ~ #gamedata:transparent run tp @s ~ ~-0.1 ~
#execute at @s rotated ~ 0 if block ^ ^ ^0.3 #gamedata:transparent if block ~ ~-0.15 ~ #gamedata:transparent run tp @s ~ ~-0.1 ~
#execute at @s rotated ~ 0 if block ^ ^ ^0.3 #gamedata:transparent if block ~ ~-0.15 ~ #gamedata:transparent run tp @s ~ ~-0.1 ~
#execute at @s rotated ~ 0 if block ^ ^ ^0.3 #gamedata:transparent if block ~ ~-0.15 ~ #gamedata:transparent run tp @s ~ ~-0.1 ~
#execute at @s rotated ~ 0 if block ^ ^ ^0.3 #gamedata:transparent if block ~ ~-0.15 ~ #gamedata:transparent run tp @s ~ ~-0.1 ~
#execute at @s rotated ~ 0 if block ^ ^ ^0.3 #gamedata:transparent if block ~ ~-0.1 ~ #gamedata:transparent unless block ~ ~-0.8 ~ #gamedata:transparent align y run playsound minecraft:block.gilded_blackstone.break block @a[distance=..32] ~ ~ ~ 1 0.1 0
#execute at @s rotated ~ 0 if block ^ ^ ^0.3 #gamedata:transparent if block ~ ~-0.1 ~ #gamedata:transparent unless block ~ ~-0.8 ~ #gamedata:transparent align y run particle block black_concrete ~ ~0.3 ~ 0.3 0 0.3 0 50 normal @a[distance=..100]
#execute at @s rotated ~ 0 if block ^ ^ ^0.3 #gamedata:transparent if block ~ ~-0.1 ~ #gamedata:transparent unless block ~ ~-0.8 ~ #gamedata:transparent align y run tp ~ ~ ~
#execute at @s rotated ~ 0 unless block ^ ^ ^0.3 #gamedata:transparent if block ~ ~0.1 ~ #gamedata:transparent run tp @s ~ ~0.05 ~
#execute at @s rotated ~ 0 unless block ^ ^ ^0.3 #gamedata:transparent if block ~ ~0.1 ~ #gamedata:transparent run tp @s ~ ~0.05 ~
#execute at @s rotated ~ 0 unless block ^ ^ ^0.3 #gamedata:transparent if block ~ ~0.1 ~ #gamedata:transparent run tp @s ~ ~0.05 ~
#execute if entity @a[tag=234,distance=2..60] at @s rotated ~ 0 run function gamedata:stepforward



#execute at @s rotated ~ 0 unless block ^ ^ ^0.3 #gamedata:transparent if block ~ ~0.1 ~ #gamedata:transparent positioned ^0.45 ^ ^0.2 run particle ash ~ ~0.3 ~ 0.05 0 0.05 1 16 force @a[distance=..16]
#execute at @s rotated ~ 0 unless block ^ ^ ^0.3 #gamedata:transparent if block ~ ~0.1 ~ #gamedata:transparent positioned ^-0.45 ^ ^0.2 run particle ash ~ ~0.3 ~ 0.05 0 0.05 1 16 force @a[distance=..16]
#execute if entity @a[tag=234,distance=2..60] at @s rotated ~ 0 unless block ~ ~-0.1 ~ #gamedata:transparent positioned ^-0.45 ^ ^-1 run particle ash ~ ~0.3 ~ 0.05 0 0.05 1 16 force @a[distance=..16]
#execute if entity @a[tag=234,distance=2..60] at @s rotated ~ 0 unless block ~ ~-0.1 ~ #gamedata:transparent positioned ^0.45 ^ ^-1 run particle ash ~ ~0.3 ~ 0.05 0 0.05 1 16 force @a[distance=..16]
#execute if entity @a[tag=234,distance=10..30] at @s rotated ~ 0 unless block ~ ~-0.1 ~ #gamedata:transparent positioned ^-0.45 ^ ^ run particle flame ~ ~0.3 ~ 0.02 0 0.02 0.03 3 force @a[distance=..100]
#execute if entity @a[tag=234,distance=10..30] at @s rotated ~ 0 unless block ~ ~-0.1 ~ #gamedata:transparent positioned ^0.45 ^ ^ run particle flame ~ ~0.3 ~ 0.02 0 0.02 0.03 3 force @a[distance=..100]
#execute if entity @a[tag=234,distance=30..60] at @s rotated ~ 0 unless block ~ ~-0.1 ~ #gamedata:transparent positioned ^-0.45 ^ ^ run particle soul_fire_flame ~ ~0.3 ~ 0.02 0 0.02 0.03 3 force @a[distance=..100]
#execute if entity @a[tag=234,distance=30..60] at @s rotated ~ 0 unless block ~ ~-0.1 ~ #gamedata:transparent positioned ^0.45 ^ ^ run particle soul_fire_flame ~ ~0.3 ~ 0.02 0 0.02 0.03 3 force @a[distance=..100]
execute as @a[tag=234] at @s rotated ~ 0 run summon marker ^ ^1 ^-1.4 {Tags:["summon","anchor"]}
execute facing entity @e[tag=summon,distance=3..10] feet run tp @s ^ ^ ^0.25
execute facing entity @e[tag=summon,distance=10..] feet run tp @s ^ ^ ^0.5
execute if entity @e[tag=summon,distance=..2.99999] run scoreboard players add @s number 1
execute at @s facing entity @a[tag=234] feet run tp @s ~ ~ ~ ~ ~
execute at @s if entity @e[tag=summon,distance=..2.99999] if score @s number matches 1..5 run tp @s ~ ~0.0015 ~
execute at @s if entity @e[tag=summon,distance=..2.99999] if score @s number matches 6..10 run tp @s ~ ~0.0027 ~
execute at @s if entity @e[tag=summon,distance=..2.99999] if score @s number matches 11..15 run tp @s ~ ~0.0045 ~
execute at @s if entity @e[tag=summon,distance=..2.99999] if score @s number matches 16..20 run tp @s ~ ~0.0045 ~
execute at @s if entity @e[tag=summon,distance=..2.99999] if score @s number matches 21..25 run tp @s ~ ~0.0027 ~
execute at @s if entity @e[tag=summon,distance=..2.99999] if score @s number matches 26..30 run tp @s ~ ~0.0015 ~

execute at @s if entity @e[tag=summon,distance=..2.99999] if score @s number matches 31..35 run tp @s ~ ~-0.0015 ~
execute at @s if entity @e[tag=summon,distance=..2.99999] if score @s number matches 36..40 run tp @s ~ ~-0.0027 ~
execute at @s if entity @e[tag=summon,distance=..2.99999] if score @s number matches 41..45 run tp @s ~ ~-0.0045 ~
execute at @s if entity @e[tag=summon,distance=..2.99999] if score @s number matches 46..50 run tp @s ~ ~-0.0045 ~
execute at @s if entity @e[tag=summon,distance=..2.99999] if score @s number matches 51..55 run tp @s ~ ~-0.0027 ~
execute at @s if entity @e[tag=summon,distance=..2.99999] if score @s number matches 56..60 run tp @s ~ ~-0.0015 ~

scoreboard players set @s[scores={number=60..}] number 0
execute unless entity @a[tag=234] run kill @s
kill @e[tag=summon,tag=anchor]
tag @a[tag=234] remove 234
tag @s remove 123
