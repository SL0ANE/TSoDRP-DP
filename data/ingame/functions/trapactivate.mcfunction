execute if score system arena matches 1 at @s run tp @s ^ ^ ^0.5 ~110 ~
playsound minecraft:block.beacon.activate block @a[tag=ingame] ~ ~ ~ 3 1.4 1
title @a[tag=ingame] clear
title @a[tag=ingame] times 5 20 5
title @a[tag=ingame] title {"text":"陷阱被触发","color":"dark_green"}
