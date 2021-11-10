tag @s add 123
title @s clear

execute unless entity @e[tag=mascot,scores={hp=..0}] unless entity @e[tag=mascot,scores={dying=1..}] unless entity @e[tag=surrender] as @e[tag=mascot,tag=!surrender] run title @a[tag=ingame] times 5 40 5
execute unless entity @e[tag=mascot,scores={hp=..0}] unless entity @e[tag=mascot,scores={dying=1..}] unless entity @e[tag=surrender] as @e[tag=mascot,tag=!surrender] if score @s ownedby = @e[tag=123,limit=1] playernumber run title @a[tag=ingame] title [{"selector":"@s","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"已投降","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute unless entity @e[tag=mascot,scores={hp=..0}] unless entity @e[tag=mascot,scores={dying=1..}] unless entity @e[tag=surrender] as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] playernumber run tag @s add surrender



clear @s white_banner
tag @s remove 123

