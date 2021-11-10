execute if score @s dying matches 130 at @s run summon minecraft:fireball ~ ~1 ~ {direction:[0.0,-1.0,0.0],Motion:[0.0,-1.0,0.0],ExplosionPower:1}
execute if score @s dying matches 130 at @s run particle minecraft:explosion_emitter ~ ~ ~ 0.3 0.3 0.3 1 1 force
execute if score @s dying matches 90 at @s run summon minecraft:fireball ~ ~1 ~ {direction:[0.0,-1.0,0.0],Motion:[0.0,-1.0,0.0],ExplosionPower:1}
execute if score @s dying matches 90 at @s run particle minecraft:explosion_emitter ~ ~ ~ 0.3 0.3 0.3 1 1 force
execute if score @s dying matches 40 at @s run function ingame:event/playerdie0-2
execute if score @s dying matches 1 at @s run function lobby:reload