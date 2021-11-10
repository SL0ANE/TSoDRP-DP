scoreboard players operation @s number = @s deck
function lobby:createdeck/use_deck1
function lobby:createdeck/use_deck2
function lobby:createdeck/use_deck3
function lobby:createdeck/use_deck4
function lobby:createdeck/use_deck5
execute if score @s number matches 1 run function lobby:createdeck/use_deck1
execute if score @s number matches 2 run function lobby:createdeck/use_deck2
execute if score @s number matches 3 run function lobby:createdeck/use_deck3
execute if score @s number matches 4 run function lobby:createdeck/use_deck4
execute if score @s number matches 5 run function lobby:createdeck/use_deck5
scoreboard players reset @s number