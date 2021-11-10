scoreboard players set @a minioncode1 0
scoreboard players set @a minioncode2 0
scoreboard players set @a minioncode3 0
scoreboard players set @a minioncode4 0

scoreboard players set @a playernumber 0
scoreboard players set @r[tag=readygame,scores={playernumber=0}] playernumber 1
scoreboard players set @r[tag=readygame,scores={playernumber=0}] playernumber 2
execute as @a[tag=readygame] run function lobby:checkdeck