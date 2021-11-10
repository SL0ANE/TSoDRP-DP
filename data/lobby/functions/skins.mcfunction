tag @s add 123
scoreboard players add @s mascot 1
execute if score @s mascot matches 3 as @e[tag=reportholder] if score @s playerid = @a[tag=123,limit=1] playerid unless score @s shaman matches 32.. run scoreboard players add @a[tag=123] mascot 1
execute if score @s mascot matches 4 as @e[tag=reportholder] if score @s playerid = @a[tag=123,limit=1] playerid unless score @s miku matches 32.. run scoreboard players add @a[tag=123] mascot 1
execute if score @s mascot matches 5 as @e[tag=reportholder] if score @s playerid = @a[tag=123,limit=1] playerid unless score @s hutao matches 32.. run scoreboard players add @a[tag=123] mascot 1
execute if score @s mascot matches 6 as @e[tag=reportholder] if score @s playerid = @a[tag=123,limit=1] playerid unless score @s nyan matches 32.. run scoreboard players add @a[tag=123] mascot 1
execute if score @s mascot matches 7 as @e[tag=reportholder] if score @s playerid = @a[tag=123,limit=1] playerid unless score @s joey matches 32.. run scoreboard players add @a[tag=123] mascot 1
execute if score @s mascot matches 8 as @e[tag=reportholder] if score @s playerid = @a[tag=123,limit=1] playerid unless score @s kaiba matches 32.. run scoreboard players add @a[tag=123] mascot 1
execute if score @s mascot matches 9 as @e[tag=reportholder] if score @s playerid = @a[tag=123,limit=1] playerid unless score @s yugi matches 32.. run scoreboard players add @a[tag=123] mascot 1
execute if score @s mascot matches 10 as @e[tag=reportholder] if score @s playerid = @a[tag=123,limit=1] playerid unless score @s nono matches 32.. run scoreboard players add @a[tag=123] mascot 1
execute if score @s mascot matches 11 as @e[tag=reportholder] if score @s playerid = @a[tag=123,limit=1] playerid unless score @s supernono matches 32.. run scoreboard players add @a[tag=123] mascot 1



execute if score @s mascot matches 12 run scoreboard players set @s mascot 1
playsound minecraft:block.note_block.bell block @s ~ ~ ~ 3 0.8 1
tag @s remove 123
function lobby:mascotchange