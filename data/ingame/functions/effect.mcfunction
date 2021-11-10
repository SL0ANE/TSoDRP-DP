execute as @e[tag=effect,tag=frost] at @s run function ingame:effect/frost
execute as @e[tag=effect,tag=debuff] at @s run function ingame:effect/debuff
execute as @e[tag=effect,tag=buff] at @s run function ingame:effect/buff
execute as @e[tag=effect,tag=damage] at @s run function ingame:effect/damage
execute as @e[tag=effect,tag=healer] at @s run function ingame:effect/healer
execute as @e[tag=effect,tag=sword] at @s run function ingame:effect/sword
execute as @e[tag=effect,tag=tnt] at @s run function ingame:effect/tnt
execute as @e[tag=effect,tag=arrow] at @s run function ingame:effect/arrow
execute as @e[tag=effect,tag=arrow2] at @s run function ingame:effect/arrow2
execute as @e[tag=effect,tag=light_buff] at @s run function ingame:effect/light_buff
execute as @e[tag=effect,tag=silencer] at @s run function ingame:effect/silencer
#execute as @e[tag=effect,tag=bite] at @s run function ingame:effect/bite
#execute as @e[tag=effect,tag=evolver] at @s run function ingame:effect/evolver
execute as @e[tag=effect,tag=stacker] at @s run function ingame:effect/stacker
execute as @e[tag=effect,tag=soultake] at @s run function ingame:effect/soultake
execute as @e[tag=effect,tag=soulgive] at @s run function ingame:effect/soulgive
execute as @e[tag=effect,tag=jail] at @s run function ingame:effect/jail
execute as @e[tag=effect,tag=sword2] at @s run function ingame:effect/sword2
execute as @e[tag=effect,tag=cannon] at @s run function ingame:effect/cannon
execute as @e[tag=effect,tag=hammer] at @s run function ingame:effect/hammer
execute as @e[tag=effect,tag=kill] at @s run function ingame:effect/kill
execute as @e[tag=effect,tag=fire] at @s run function ingame:effect/fire
execute as @e[tag=effect,tag=healtaken] at @s run function ingame:effect/healtaken
execute as @e[tag=effect,tag=dmgtaken] at @s run function ingame:effect/dmgtaken
execute as @e[tag=effect,tag=scratch] at @s run function ingame:effect/scratch
execute as @e[tag=effect,tag=laser_slow] at @s run function ingame:effect/laser_slow
execute as @e[tag=effect,tag=laser_fast] at @s run function ingame:effect/laser_fast
execute as @e[tag=effect,tag=disaster] at @s run function ingame:effect/disaster
execute as @e[tag=effect,tag=disaster_particle] at @s run function ingame:effect/disaster_particle

#免伤特效
execute as @e[tag=mascot,tag=!dmgimmune] if data entity @s HandItems.[{id:"minecraft:cyan_dye",Count:1b,tag:{CustomModelData:9}}] run item replace entity @s weapon.offhand with minecraft:air
execute as @e[tag=minion,tag=!dmgimmune] if data entity @s HandItems.[{id:"minecraft:cyan_dye",Count:1b,tag:{CustomModelData:9}}] run item replace entity @s weapon.mainhand with minecraft:air
execute as @e[tag=mascot,tag=dmgimmune] run item replace entity @s weapon.offhand with minecraft:cyan_dye{CustomModelData:9} 1
execute as @e[tag=minion,tag=dmgimmune] run item replace entity @s weapon.mainhand with minecraft:cyan_dye{CustomModelData:9} 1
#免伤特效