scoreboard players reset @s casting
#execute unless score system waiting matches 5.. run scoreboard players set system waiting 5
tag @s[tag=double_casted] remove double_casting
tag @s[tag=double_casted] remove double_casted
scoreboard players set @s[tag=double_casting,tag=!double_casted] casting 25
tag @s[tag=double_casting] add double_casted
