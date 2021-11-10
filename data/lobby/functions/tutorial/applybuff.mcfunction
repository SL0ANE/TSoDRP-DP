tag @s add addbufftarget

execute if entity @s[tag=addaggressive,tag=!aggressive] run playsound minecraft:ui.loom.take_result block @a ~ ~ ~ 3 1 1
execute if entity @s[tag=addimmune,tag=!immune] run playsound minecraft:ui.loom.take_result block @a ~ ~ ~ 3 1 1
execute if entity @s[tag=addtough,tag=!tough] run playsound minecraft:ui.loom.take_result block @a ~ ~ ~ 3 1 1
execute if entity @s[tag=addkeen,tag=!keen] run playsound minecraft:ui.loom.take_result block @a ~ ~ ~ 3 1 1
execute if entity @s[tag=addprudent,tag=!prudent] run playsound minecraft:ui.loom.take_result block @a ~ ~ ~ 3 1 1
execute if entity @s[tag=addstrike,tag=!strike] run playsound minecraft:ui.loom.take_result block @a ~ ~ ~ 3 1 1
execute if entity @s[tag=addcunning,tag=!cunning] run playsound minecraft:ui.loom.take_result block @a ~ ~ ~ 3 1 1
execute if entity @s[tag=adddodge,tag=!dodge] run playsound minecraft:ui.loom.take_result block @a ~ ~ ~ 3 1 1
execute if entity @s[tag=addpuzzle,tag=!puzzle] run playsound minecraft:ui.loom.take_result block @a ~ ~ ~ 3 1 1
execute if entity @s[tag=addblock,tag=!block] run playsound minecraft:ui.loom.take_result block @a ~ ~ ~ 3 1 1
execute if entity @s[tag=addchain,tag=!chain] run playsound minecraft:ui.loom.take_result block @a ~ ~ ~ 3 1 1
execute if entity @s[tag=addsweep,tag=!sweep] run playsound minecraft:ui.loom.take_result block @a ~ ~ ~ 3 1 1

execute if score @s[tag=addaggressive,tag=!aggressive] minioncode matches 1 run data modify storage minecraft:minion1buff List append value ""
execute if score @s[tag=addimmune,tag=!immune] minioncode matches 1 run data modify storage minecraft:minion1buff List append value ""
execute if score @s[tag=addtough,tag=!tough] minioncode matches 1 run data modify storage minecraft:minion1buff List append value ""
execute if score @s[tag=addkeen,tag=!keen] minioncode matches 1 run data modify storage minecraft:minion1buff List append value ""
execute if score @s[tag=addprudent,tag=!prudent] minioncode matches 1 run data modify storage minecraft:minion1buff List append value ""
execute if score @s[tag=addstrike,tag=!strike] minioncode matches 1 run data modify storage minecraft:minion1buff List append value ""
execute if score @s[tag=addcunning,tag=!cunning] minioncode matches 1 run data modify storage minecraft:minion1buff List append value ""
execute if score @s[tag=adddodge,tag=!dodge] minioncode matches 1 run data modify storage minecraft:minion1buff List append value ""
execute if score @s[tag=addpuzzle,tag=!puzzle] minioncode matches 1 run data modify storage minecraft:minion1buff List append value ""
execute if score @s[tag=addblock,tag=!block] minioncode matches 1 run data modify storage minecraft:minion1buff List append value ""
execute if score @s[tag=addchain,tag=!chain] minioncode matches 1 run data modify storage minecraft:minion1buff List append value ""
execute if score @s[tag=addsweep,tag=!sweep] minioncode matches 1 run data modify storage minecraft:minion1buff List append value ""

execute if score @s[tag=addaggressive,tag=!aggressive] minioncode matches 2 run data modify storage minecraft:minion2buff List append value ""
execute if score @s[tag=addimmune,tag=!immune] minioncode matches 2 run data modify storage minecraft:minion2buff List append value ""
execute if score @s[tag=addtough,tag=!tough] minioncode matches 2 run data modify storage minecraft:minion2buff List append value ""
execute if score @s[tag=addkeen,tag=!keen] minioncode matches 2 run data modify storage minecraft:minion2buff List append value ""
execute if score @s[tag=addprudent,tag=!prudent] minioncode matches 2 run data modify storage minecraft:minion2buff List append value ""
execute if score @s[tag=addstrike,tag=!strike] minioncode matches 2 run data modify storage minecraft:minion2buff List append value ""
execute if score @s[tag=addcunning,tag=!cunning] minioncode matches 2 run data modify storage minecraft:minion2buff List append value ""
execute if score @s[tag=adddodge,tag=!dodge] minioncode matches 2 run data modify storage minecraft:minion2buff List append value ""
execute if score @s[tag=addpuzzle,tag=!puzzle] minioncode matches 2 run data modify storage minecraft:minion2buff List append value ""
execute if score @s[tag=addblock,tag=!block] minioncode matches 2 run data modify storage minecraft:minion2buff List append value ""
execute if score @s[tag=addchain,tag=!chain] minioncode matches 2 run data modify storage minecraft:minion2buff List append value ""
execute if score @s[tag=addsweep,tag=!sweep] minioncode matches 2 run data modify storage minecraft:minion2buff List append value ""

execute if score @s[tag=addaggressive,tag=!aggressive] minioncode matches 3 run data modify storage minecraft:minion3buff List append value ""
execute if score @s[tag=addimmune,tag=!immune] minioncode matches 3 run data modify storage minecraft:minion3buff List append value ""
execute if score @s[tag=addtough,tag=!tough] minioncode matches 3 run data modify storage minecraft:minion3buff List append value ""
execute if score @s[tag=addkeen,tag=!keen] minioncode matches 3 run data modify storage minecraft:minion3buff List append value ""
execute if score @s[tag=addprudent,tag=!prudent] minioncode matches 3 run data modify storage minecraft:minion3buff List append value ""
execute if score @s[tag=addstrike,tag=!strike] minioncode matches 3 run data modify storage minecraft:minion3buff List append value ""
execute if score @s[tag=addcunning,tag=!cunning] minioncode matches 3 run data modify storage minecraft:minion3buff List append value ""
execute if score @s[tag=adddodge,tag=!dodge] minioncode matches 3 run data modify storage minecraft:minion3buff List append value ""
execute if score @s[tag=addpuzzle,tag=!puzzle] minioncode matches 3 run data modify storage minecraft:minion3buff List append value ""
execute if score @s[tag=addblock,tag=!block] minioncode matches 3 run data modify storage minecraft:minion3buff List append value ""
execute if score @s[tag=addchain,tag=!chain] minioncode matches 3 run data modify storage minecraft:minion3buff List append value ""
execute if score @s[tag=addsweep,tag=!sweep] minioncode matches 3 run data modify storage minecraft:minion3buff List append value ""

execute if score @s[tag=addaggressive,tag=!aggressive] minioncode matches 4 run data modify storage minecraft:minion4buff List append value ""
execute if score @s[tag=addimmune,tag=!immune] minioncode matches 4 run data modify storage minecraft:minion4buff List append value ""
execute if score @s[tag=addtough,tag=!tough] minioncode matches 4 run data modify storage minecraft:minion4buff List append value ""
execute if score @s[tag=addkeen,tag=!keen] minioncode matches 4 run data modify storage minecraft:minion4buff List append value ""
execute if score @s[tag=addprudent,tag=!prudent] minioncode matches 4 run data modify storage minecraft:minion4buff List append value ""
execute if score @s[tag=addstrike,tag=!strike] minioncode matches 4 run data modify storage minecraft:minion4buff List append value ""
execute if score @s[tag=addcunning,tag=!cunning] minioncode matches 4 run data modify storage minecraft:minion4buff List append value ""
execute if score @s[tag=adddodge,tag=!dodge] minioncode matches 4 run data modify storage minecraft:minion4buff List append value ""
execute if score @s[tag=addpuzzle,tag=!puzzle] minioncode matches 4 run data modify storage minecraft:minion4buff List append value ""
execute if score @s[tag=addblock,tag=!block] minioncode matches 4 run data modify storage minecraft:minion4buff List append value ""
execute if score @s[tag=addchain,tag=!chain] minioncode matches 4 run data modify storage minecraft:minion4buff List append value ""
execute if score @s[tag=addsweep,tag=!sweep] minioncode matches 4 run data modify storage minecraft:minion4buff List append value ""

execute if score @s[tag=addaggressive,tag=!aggressive] minioncode matches 5 run data modify storage minecraft:minion5buff List append value ""
execute if score @s[tag=addimmune,tag=!immune] minioncode matches 5 run data modify storage minecraft:minion5buff List append value ""
execute if score @s[tag=addtough,tag=!tough] minioncode matches 5 run data modify storage minecraft:minion5buff List append value ""
execute if score @s[tag=addkeen,tag=!keen] minioncode matches 5 run data modify storage minecraft:minion5buff List append value ""
execute if score @s[tag=addprudent,tag=!prudent] minioncode matches 5 run data modify storage minecraft:minion5buff List append value ""
execute if score @s[tag=addstrike,tag=!strike] minioncode matches 5 run data modify storage minecraft:minion5buff List append value ""
execute if score @s[tag=addcunning,tag=!cunning] minioncode matches 5 run data modify storage minecraft:minion5buff List append value ""
execute if score @s[tag=adddodge,tag=!dodge] minioncode matches 5 run data modify storage minecraft:minion5buff List append value ""
execute if score @s[tag=addpuzzle,tag=!puzzle] minioncode matches 5 run data modify storage minecraft:minion5buff List append value ""
execute if score @s[tag=addblock,tag=!block] minioncode matches 5 run data modify storage minecraft:minion5buff List append value ""
execute if score @s[tag=addchain,tag=!chain] minioncode matches 5 run data modify storage minecraft:minion5buff List append value ""
execute if score @s[tag=addsweep,tag=!sweep] minioncode matches 5 run data modify storage minecraft:minion5buff List append value ""

execute if score @s[tag=addaggressive,tag=!aggressive] minioncode matches 6 run data modify storage minecraft:minion6buff List append value ""
execute if score @s[tag=addimmune,tag=!immune] minioncode matches 6 run data modify storage minecraft:minion6buff List append value ""
execute if score @s[tag=addtough,tag=!tough] minioncode matches 6 run data modify storage minecraft:minion6buff List append value ""
execute if score @s[tag=addkeen,tag=!keen] minioncode matches 6 run data modify storage minecraft:minion6buff List append value ""
execute if score @s[tag=addprudent,tag=!prudent] minioncode matches 6 run data modify storage minecraft:minion6buff List append value ""
execute if score @s[tag=addstrike,tag=!strike] minioncode matches 6 run data modify storage minecraft:minion6buff List append value ""
execute if score @s[tag=addcunning,tag=!cunning] minioncode matches 6 run data modify storage minecraft:minion6buff List append value ""
execute if score @s[tag=adddodge,tag=!dodge] minioncode matches 6 run data modify storage minecraft:minion6buff List append value ""
execute if score @s[tag=addpuzzle,tag=!puzzle] minioncode matches 6 run data modify storage minecraft:minion6buff List append value ""
execute if score @s[tag=addblock,tag=!block] minioncode matches 6 run data modify storage minecraft:minion6buff List append value ""
execute if score @s[tag=addchain,tag=!chain] minioncode matches 6 run data modify storage minecraft:minion6buff List append value ""
execute if score @s[tag=addsweep,tag=!sweep] minioncode matches 6 run data modify storage minecraft:minion6buff List append value ""

execute if entity @s[tag=addaggressive,tag=!aggressive] unless score @s aggressivetime matches 1..4 run scoreboard players set @s aggressivetime 5
execute if entity @s[tag=addimmune,tag=!immune] unless score @s immunetime matches 1..4 run scoreboard players set @s immunetime 5
execute if entity @s[tag=addtough,tag=!tough] unless score @s toughtime matches 1..4 run scoreboard players set @s toughtime 5
execute if entity @s[tag=addkeen,tag=!keen] unless score @s keentime matches 1..4 run scoreboard players set @s keentime 5
execute if entity @s[tag=addprudent,tag=!prudent] unless score @s prudenttime matches 1..4 run scoreboard players set @s prudenttime 5
execute if entity @s[tag=addstrike,tag=!strike] unless score @s striketime matches 1..4 run scoreboard players set @s striketime 5
execute if entity @s[tag=addcunning,tag=!cunning] unless score @s cunningtime matches 1..4 run scoreboard players set @s cunningtime 5
execute if entity @s[tag=adddodge,tag=!dodge] unless score @s dodgetime matches 1..4 run scoreboard players set @s dodgetime 5
execute if entity @s[tag=addpuzzle,tag=!puzzle] unless score @s puzzletime matches 1..4 run scoreboard players set @s puzzletime 5
execute if entity @s[tag=addblock,tag=!block] unless score @s blocktime matches 1..4 run scoreboard players set @s blocktime 5
execute if entity @s[tag=addchain,tag=!chain] unless score @s chaintime matches 1..4 run scoreboard players set @s chaintime 5
execute if entity @s[tag=addsweep,tag=!sweep] unless score @s sweeptime matches 1..4 run scoreboard players set @s sweeptime 5

scoreboard players remove @s[scores={aggressivetime=1..4}] aggressivetime 1
scoreboard players remove @s[scores={immunetime=1..4}] immunetime 1
scoreboard players remove @s[scores={toughtime=1..4}] toughtime 1
scoreboard players remove @s[scores={keentime=1..4}] keentime 1
scoreboard players remove @s[scores={prudenttime=1..4}] prudenttime 1
scoreboard players remove @s[scores={striketime=1..4}] striketime 1
scoreboard players remove @s[scores={cunningtime=1..4}] cunningtime 1
scoreboard players remove @s[scores={dodgetime=1..4}] dodgetime 1
scoreboard players remove @s[scores={puzzletime=1..4}] puzzletime 1
scoreboard players remove @s[scores={blocktime=1..4}] blocktime 1
scoreboard players remove @s[scores={chaintime=1..4}] chaintime 1
scoreboard players remove @s[scores={sweeptime=1..4}] sweeptime 1

scoreboard players remove @s[scores={dmgimmunetime=1..4}] dmgimmunetime 1


execute if entity @s[tag=addaggressive,tag=!aggressive] run tag @s add aggressive
execute if entity @s[tag=addimmune,tag=!immune] run tag @s add immune
execute if entity @s[tag=addtough,tag=!tough] run tag @s add tough
execute if entity @s[tag=addkeen,tag=!keen] run tag @s add keen
execute if entity @s[tag=addprudent,tag=!prudent] run tag @s add prudent
execute if entity @s[tag=addstrike,tag=!strike] run tag @s add strike
execute if entity @s[tag=addcunning,tag=!cunning] run tag @s add cunning
execute if entity @s[tag=adddodge,tag=!dodge] run tag @s add dodge
execute if entity @s[tag=addpuzzle,tag=!puzzle] run tag @s add puzzle
execute if entity @s[tag=addblock,tag=!block] run tag @s add block
execute if entity @s[tag=addchain,tag=!chain] run tag @s add chain
execute if entity @s[tag=addsweep,tag=!chain] run tag @s add sweep

execute if entity @s[tag=addaggressive] run function lobby:tutorial/buffcheck
execute if entity @s[tag=addimmune] run function lobby:tutorial/buffcheck
execute if entity @s[tag=addtough] run function lobby:tutorial/buffcheck
execute if entity @s[tag=addkeen] run function lobby:tutorial/buffcheck
execute if entity @s[tag=addprudent] run function lobby:tutorial/buffcheck
execute if entity @s[tag=addstrike] run function lobby:tutorial/buffcheck
execute if entity @s[tag=addcunning] run function lobby:tutorial/buffcheck
execute if entity @s[tag=adddodge] run function lobby:tutorial/buffcheck
execute if entity @s[tag=addpuzzle] run function lobby:tutorial/buffcheck
execute if entity @s[tag=addblock] run function lobby:tutorial/buffcheck
execute if entity @s[tag=addchain] run function lobby:tutorial/buffcheck
execute if entity @s[tag=addsweep] run function lobby:tutorial/buffcheck
execute if entity @s[tag=aggressive,scores={aggressivetime=0}] run function lobby:tutorial/buffcheck
execute if entity @s[tag=immune,scores={immunetime=0}] run function lobby:tutorial/buffcheck
execute if entity @s[tag=tough,scores={toughtime=0}] run function lobby:tutorial/buffcheck
execute if entity @s[tag=keen,scores={keentime=0}] run function lobby:tutorial/buffcheck
execute if entity @s[tag=prudent,scores={prudenttime=0}] run function lobby:tutorial/buffcheck
execute if entity @s[tag=strike,scores={striketime=0}] run function lobby:tutorial/buffcheck
execute if entity @s[tag=cunning,scores={cunningtime=0}] run function lobby:tutorial/buffcheck
execute if entity @s[tag=dodge,scores={dodgetime=0}] run function lobby:tutorial/buffcheck
execute if entity @s[tag=puzzle,scores={puzzletime=0}] run function lobby:tutorial/buffcheck
execute if entity @s[tag=block,scores={blocktime=0}] run function lobby:tutorial/buffcheck
execute if entity @s[tag=chain,scores={chaintime=0}] run function lobby:tutorial/buffcheck
execute if entity @s[tag=sweep,scores={sweeptime=0}] run function lobby:tutorial/buffcheck

execute if entity @s[tag=dmgimmune,scores={dmgimmunetime=0}] run function lobby:tutorial/buffcheck

execute if entity @s[tag=addstun] run function lobby:tutorial/stunned

tag @s remove addbufftarget

