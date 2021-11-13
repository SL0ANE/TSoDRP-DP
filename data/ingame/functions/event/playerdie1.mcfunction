tag @s add 123
execute as @a[tag=ingame,tag=playing] if score @s playernumber = @e[tag=123,limit=1] ownedby run tag @s add targetplayer
execute unless entity @e[tag=targetplayer] run tag @s add targetplayer
execute if score @s dying matches 130 run summon minecraft:ender_dragon 67 54 -5 {NoAI:1b,Tags:["dragon","summon"],Silent:1b}
execute if score @s dying matches 130 at @e[tag=dragon] run playsound minecraft:entity.ender_dragon.growl block @a[tag=ingame] ~ ~ ~ 3 1.3 1
execute if score @s dying matches 130 at @s run summon minecraft:end_crystal 67 54 -5 {BeamTarget:{},Tags:["ec","summon"]}
execute if score @s dying matches 130 run summon minecraft:marker 53 27 -4 {Tags:["coord","summon"],Potion:CBC,Age:0,Duration:1000,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}
execute if score @s dying matches 130 at @s run scoreboard players operation @e[tag=summon] ownedby = @s ownedby
execute if score @s dying matches 40..130 store result score y position run data get entity @e[tag=coord,limit=1] Pos[1] 1
execute if score @s dying matches 45..130 run playsound minecraft:block.conduit.attack.target block @a[tag=ingame] ~ ~ ~ 0.8 2 1


execute as @e[type=end_crystal,tag=ec] if score @s ownedby = @e[tag=123,limit=1] ownedby store result entity @s BeamTarget.X double 1 run data get entity @e[tag=coord,limit=1] Pos[0]
scoreboard players remove y position 1
execute as @e[type=end_crystal,tag=ec] if score @s ownedby = @e[tag=123,limit=1] ownedby store result entity @s BeamTarget.Y double 1 run scoreboard players get y position
execute as @e[type=end_crystal,tag=ec] if score @s ownedby = @e[tag=123,limit=1] ownedby store result entity @s BeamTarget.Z double 1 run data get entity @e[tag=coord,limit=1] Pos[2]
scoreboard players reset y position
execute if score @s dying matches 100..130 as @e[tag=coord] at @s run particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0.0 30 force
execute if score @s dying matches 100..130 as @e[tag=coord] at @s facing 80 27 -6 run tp @s ^ ^ ^1
execute if score @s dying matches 100..130 as @e[tag=coord] at @s as @e[tag=character,distance=..3] at @s if score @s ownedby = @e[tag=123,limit=1] ownedby run playsound minecraft:entity.blaze.shoot block @a[tag=ingame] ~ ~ ~ 3 0.8 1
execute if score @s dying matches 100..130 as @e[tag=coord] at @s as @e[tag=character,distance=..3] at @s if score @s ownedby = @e[tag=123,limit=1] ownedby run data merge entity @s {Fire:200s,Marker:0b}
execute if score @s dying matches 90 as @e[tag=minion] at @s if score @s ownedby = @e[tag=123,limit=1] ownedby run particle minecraft:smoke ~ ~ ~ 0.3 0.3 0.3 0.05 60 force
execute if score @s dying matches 90 as @e[tag=minion] at @s if score @s ownedby = @e[tag=123,limit=1] ownedby run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.05 60 force
execute if score @s dying matches 90 as @e[tag=minion] at @s if score @s ownedby = @e[tag=123,limit=1] ownedby run playsound minecraft:block.respawn_anchor.deplete block @a[tag=ingame] ~ ~ ~ 3 0.5 1
execute if score @s dying matches 90 as @e[tag=minion] at @s if score @s ownedby = @e[tag=123,limit=1] ownedby run playsound minecraft:entity.blaze.death block @a[tag=ingame] ~ ~ ~ 3 1.4 1
execute if score @s dying matches 90 as @e[tag=minion] at @s if score @s ownedby = @e[tag=123,limit=1] ownedby run playsound minecraft:block.fire.extinguish block @a[tag=ingame] ~ ~ ~ 3 0.7 1
execute if score @s dying matches 90 as @e[tag=minion] at @s if score @s ownedby = @e[tag=123,limit=1] ownedby run kill @s
execute if score @s dying matches 90 as @e[tag=data,tag=miniondata] if score @s ownedby = @e[tag=123,limit=1] ownedby run kill @s
execute if score @s dying matches 90 as @e[tag=buffstorage] if score @s ownedby = @e[tag=123,limit=1] ownedby run kill @s



execute if score @s dying matches 85 at @e[tag=targetplayer] run summon minecraft:fireball ~ ~6 ~ {direction:[0.0,-1.0,0.0],Motion:[0.0,-3.0,0.0],ExplosionPower:1}
execute if score @s dying matches 85 at @e[tag=targetplayer] run particle minecraft:explosion_emitter ~ ~ ~ 0.3 0.3 0.3 1 1 force
execute if score @s dying matches 65 at @e[tag=targetplayer] run summon minecraft:fireball ~ ~6 ~ {direction:[0.0,-1.0,0.0],Motion:[0.0,-3.0,0.0],ExplosionPower:1}
execute if score @s dying matches 65 at @e[tag=targetplayer] run particle minecraft:explosion_emitter ~ ~ ~ 0.3 0.3 0.3 1 1 force

execute if score @s dying matches 40 as @e[tag=coord] if score @s ownedby = @e[tag=123,limit=1] ownedby run kill @s
execute if score @s dying matches 40 as @e[tag=ec] if score @s ownedby = @e[tag=123,limit=1] ownedby run kill @s
execute if score @s dying matches 1 as @e[tag=dragon] if score @s ownedby = @e[tag=123,limit=1] ownedby run kill @s
tag @e[tag=summon] remove summon

execute if score @s dying matches 60 run playsound minecraft:entity.ender_dragon.growl block @a[tag=ingame] ~ ~30 ~ 3 1 1
execute if score @s dying matches 40 at @e[tag=targetplayer] run function ingame:event/playerdie1-2
execute if score @s dying matches 35 run effect give @e[tag=targetplayer] minecraft:invisibility 5 0 true
execute if score @s dying matches 35 run clear @a[tag=ingame,tag=targetplayer] carrot_on_a_stick
execute if score @s dying matches 35 as @s[tag=mascot] run data merge entity @s {Fire:0s,ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute if score @s dying matches 35 as @e[tag=data,tag=mascotdata] if score @s ownedby = @e[tag=123,limit=1] ownedby run kill @s
execute if score @s dying matches 35 as @e[tag=name,tag=mascotname] if score @s ownedby = @e[tag=123,limit=1] ownedby run kill @s
execute if score @s dying matches 1 at @s run function lobby:reload
tag @s remove 123
tag @a remove targetplayer