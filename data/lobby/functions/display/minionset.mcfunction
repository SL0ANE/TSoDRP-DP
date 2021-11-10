tag @s add 234
setblock -182 19 35 minecraft:lime_shulker_box{Items:[{Slot:26b,id:"minecraft:bedrock",Count:1b}]}
data modify block -182 19 35 Items set from entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items

function lobby:createdeck/minion1set2
function lobby:createdeck/minion2set2
function lobby:createdeck/minion3set2
execute as @e[tag=summon3] run scoreboard players operation @s ownedby = @a[tag=234,limit=1] playernumber
execute as @e[tag=summon3,scores={ownedby=1,minionboard=1}] if score system arena matches 1 positioned 65 26 -4 run function lobby:display/minionset2
execute as @e[tag=summon3,scores={ownedby=1,minionboard=2}] if score system arena matches 1 positioned 67 26 -4 run function lobby:display/minionset2
execute as @e[tag=summon3,scores={ownedby=1,minionboard=3}] if score system arena matches 1 positioned 69 26 -4 run function lobby:display/minionset2
execute as @e[tag=summon3,scores={ownedby=2,minionboard=1}] if score system arena matches 1 positioned 69 26 -6 run function lobby:display/minionset2
execute as @e[tag=summon3,scores={ownedby=2,minionboard=2}] if score system arena matches 1 positioned 67 26 -6 run function lobby:display/minionset2
execute as @e[tag=summon3,scores={ownedby=2,minionboard=3}] if score system arena matches 1 positioned 65 26 -6 run function lobby:display/minionset2
kill @e[tag=summon3]

tag @e remove targetminion
tag @s remove 234