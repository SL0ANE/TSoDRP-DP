scoreboard players remove slotmachine system 1
execute if score slotmachine system matches 399 run stopsound @a block minecraft:music_disc.blocks
execute if score slotmachine system matches 399 run execute as @e[tag=slotmachine,tag=button] run data modify entity @s CustomNameVisible set value 0
execute if score slotmachine system matches 399 run summon minecraft:armor_stand -210.8 18.7 25.9 {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","sm_display","slot1"],Invisible:1,Small:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,Invulnerable:1b,NoGravity:1b,CustomNameVisible:1b}
execute if score slotmachine system matches 399 run summon minecraft:armor_stand -210.8 18.7 25.5 {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","sm_display","slot2"],Invisible:1,Small:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,Invulnerable:1b,NoGravity:1b,CustomNameVisible:1b}
execute if score slotmachine system matches 399 run summon minecraft:armor_stand -210.8 18.7 25.1 {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","sm_display","slot3"],Invisible:1,Small:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,Invulnerable:1b,NoGravity:1b,CustomNameVisible:1b}
execute if score slotmachine system matches 340..399 as @e[tag=slot1,tag=sm_display] at @s run function lobby:gambles/slotmachine3
execute if score slotmachine system matches 340 run playsound minecraft:block.bell.use block @a ~ ~ ~ 3 1.8 1
execute if score slotmachine system matches 280..399 as @e[tag=slot2,tag=sm_display] at @s run function lobby:gambles/slotmachine3
execute if score slotmachine system matches 280 run playsound minecraft:block.bell.use block @a ~ ~ ~ 3 1.5 1
execute if score slotmachine system matches 260..399 as @e[tag=slot3,tag=sm_display] at @s run function lobby:gambles/slotmachine3
execute if score slotmachine system matches 259..399 run playsound minecraft:block.dispenser.fail block @a ~ ~ ~ 0.7 1.2 0
execute if score slotmachine system matches 259 as @e[tag=slot3,tag=sm_display] at @s run function lobby:gambles/slotmachine3
execute if score slotmachine system matches 257 run playsound minecraft:block.dispenser.fail block @a ~ ~ ~ 0.7 1.2 0
execute if score slotmachine system matches 257 as @e[tag=slot3,tag=sm_display] at @s run function lobby:gambles/slotmachine3
execute if score slotmachine system matches 255 run playsound minecraft:block.dispenser.fail block @a ~ ~ ~ 0.7 1.2 0
execute if score slotmachine system matches 255 as @e[tag=slot3,tag=sm_display] at @s run function lobby:gambles/slotmachine3
execute if score slotmachine system matches 252 run playsound minecraft:block.dispenser.fail block @a ~ ~ ~ 0.7 1.2 0
execute if score slotmachine system matches 252 as @e[tag=slot3,tag=sm_display] at @s run function lobby:gambles/slotmachine3
execute if score slotmachine system matches 249 run playsound minecraft:block.dispenser.fail block @a ~ ~ ~ 0.7 1.2 0
execute if score slotmachine system matches 249 as @e[tag=slot3,tag=sm_display] at @s run function lobby:gambles/slotmachine3
execute if score slotmachine system matches 245 run playsound minecraft:block.dispenser.fail block @a ~ ~ ~ 0.7 1.2 0
execute if score slotmachine system matches 245 as @e[tag=slot3,tag=sm_display] at @s run function lobby:gambles/slotmachine3
execute if score slotmachine system matches 241 run playsound minecraft:block.dispenser.fail block @a ~ ~ ~ 0.7 1.2 0
execute if score slotmachine system matches 241 as @e[tag=slot3,tag=sm_display] at @s run function lobby:gambles/slotmachine3
execute if score slotmachine system matches 236 run playsound minecraft:block.dispenser.fail block @a ~ ~ ~ 0.7 1.2 0
execute if score slotmachine system matches 236 as @e[tag=slot3,tag=sm_display] at @s run function lobby:gambles/slotmachine3
execute if score slotmachine system matches 231 run playsound minecraft:block.dispenser.fail block @a ~ ~ ~ 0.7 1.2 0
execute if score slotmachine system matches 231 as @e[tag=slot3,tag=sm_display] at @s run function lobby:gambles/slotmachine3
execute if score slotmachine system matches 225 run playsound minecraft:block.dispenser.fail block @a ~ ~ ~ 0.7 1.2 0
execute if score slotmachine system matches 225 as @e[tag=slot3,tag=sm_display] at @s run function lobby:gambles/slotmachine3
execute if score slotmachine system matches 219 run playsound minecraft:block.dispenser.fail block @a ~ ~ ~ 0.7 1.2 0
execute if score slotmachine system matches 219 as @e[tag=slot3,tag=sm_display] at @s run function lobby:gambles/slotmachine3
execute if score slotmachine system matches 212 run playsound minecraft:block.dispenser.fail block @a ~ ~ ~ 0.7 1.2 0
execute if score slotmachine system matches 212 as @e[tag=slot3,tag=sm_display] at @s run function lobby:gambles/slotmachine3
execute if score slotmachine system matches 200 run playsound minecraft:block.dispenser.fail block @a ~ ~ ~ 0.7 1.2 0
execute if score slotmachine system matches 200 as @e[tag=slot3,tag=sm_display] at @s run function lobby:gambles/slotmachine3
execute if score slotmachine system matches 200 run playsound minecraft:block.bell.use block @a ~ ~ ~ 3 1.2 1


execute if score slotmachine system matches 170 run function lobby:gambles/slotmachine4
execute if score slotmachine system matches 160 run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 3 0.5 0
execute if score slotmachine system matches 160 run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:0,Explosions:[{Type:0,Colors:[I;15662848],FadeColors:[I;16711680]}]}},id:"minecraft:firework_rocket",Count:1},Life:0,LifeTime:20}
execute if score slotmachine system matches 151..160 run function lobby:gambles/slotmachine5
execute if score slotmachine system matches 150 run scoreboard players set slotmachine system 60
execute if score slotmachine system matches 140 run playsound minecraft:ui.toast.challenge_complete block @a ~ ~ ~ 3 1 1
execute if score slotmachine system matches 140 run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:0,Explosions:[{Type:1,Colors:[I;15662848],FadeColors:[I;16711680]}]}},id:"minecraft:firework_rocket",Count:1},Life:0,LifeTime:20}
execute if score slotmachine system matches 121..140 run function lobby:gambles/slotmachine5
execute if score slotmachine system matches 120 run scoreboard players set slotmachine system 60
execute if score slotmachine system matches 110 run title @a reset
execute if score slotmachine system matches 110 run playsound minecraft:music_disc.blocks block @a ~ ~ ~ 3 2 1
execute if score slotmachine system matches 110 run playsound minecraft:ui.toast.challenge_complete block @a ~ ~ ~ 3 1 1
execute if score slotmachine system matches 110 run title @a title {"text":"!!!!JACKPOT!!!!","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}
execute if score slotmachine system matches 110 run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:0,Explosions:[{Type:2,Colors:[I;15662848],FadeColors:[I;16711680]}]}},id:"minecraft:firework_rocket",Count:1},Life:0,LifeTime:20}
execute if score slotmachine system matches 61..110 run function lobby:gambles/slotmachine5

execute if score slotmachine system matches 1 run execute as @e[tag=slotmachine,tag=button] run data modify entity @s CustomNameVisible set value 1
execute if score slotmachine system matches 1 run kill @e[tag=sm_display]
execute if score slotmachine system matches 1 run function gamebles:slotmachine
execute if score slotmachine system matches 1 run scoreboard players reset slotmachine system
