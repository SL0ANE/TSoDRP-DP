tag @s add jiahelisi1

execute as @e[tag=jiahelisi,tag=minion,scores={recover=-1}] if score @s minioncode = @e[tag=jiahelisi1,limit=1] minioncode run tag @s add addpuzzle
execute as @e[tag=jiahelisi,tag=minion,scores={recover=-1}] if score @s minioncode = @e[tag=jiahelisi1,limit=1] minioncode run scoreboard players set @s puzzletime 2
execute as @e[tag=jiahelisi,tag=minion,scores={recover=-1}] if score @s minioncode = @e[tag=jiahelisi1,limit=1] minioncode run tag @s add addcunning
execute as @e[tag=jiahelisi,tag=minion,scores={recover=-1}] if score @s minioncode = @e[tag=jiahelisi1,limit=1] minioncode run scoreboard players set @s cunningtime 2




tag @s remove jiahelisi1