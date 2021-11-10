tag @s add targetplayer
setblock -182 19 35 air

execute if block -182 19 35 air run setblock -182 19 35 minecraft:lime_shulker_box{Items:[{Slot:26b,id:"minecraft:bedrock",Count:1b}]} destroy
data modify block -182 19 35 Items set from entity @s EnderItems.[{Slot:5b}].tag.BlockEntityTag.Items
function lobby:createdeck/card1set2
function lobby:createdeck/card2set2
function lobby:createdeck/card3set2
function lobby:createdeck/card4set2
function lobby:createdeck/card5set2
function lobby:createdeck/card6set2
function lobby:createdeck/card7set2
function lobby:createdeck/card8set2
function lobby:createdeck/card9set2
function lobby:createdeck/card10set2
function lobby:createdeck/card11set2
function lobby:createdeck/card12set2
function lobby:createdeck/card13set2
function lobby:createdeck/card14set2
function lobby:createdeck/card15set2
function lobby:createdeck/card16set2

execute as @e[tag=summon3] run function ingame:createcard
execute as @e[tag=summon2] run tag @s add card
execute as @e[tag=summon2] run tag @s remove card2
execute as @e[tag=summon2] run data merge entity @s {Pose:{Head:[90.0f,0.0f]}}
execute as @e[tag=summon2] run scoreboard players operation @s ownedby = @a[tag=targetplayer] playernumber
tag @e[tag=summon2] remove p_card
scoreboard players set @e[tag=summon2] dcpileorder 1000


tag @e remove derive
tag @e remove summon2

tag @s remove targetplayer
tag @e remove targetcard

kill @e[tag=summon3]
tag @e remove summon3