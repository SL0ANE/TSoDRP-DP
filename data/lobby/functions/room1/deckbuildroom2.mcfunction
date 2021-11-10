tag @s add 123
execute as @e[tag=chosen,tag=p_card] if score @s playerid = @a[tag=123,limit=1] playerid run tag @s add targetcard
execute as @e[tag=chosen,tag=minion2] if score @s playerid = @a[tag=123,limit=1] playerid run tag @s add targetminion
execute store result score @s deckcount if entity @e[tag=targetcard]
execute store result score @s minioncount if entity @e[tag=targetminion]
execute if score @s deckcount matches 16 if score @s minioncount matches 3 run tag @s add done
title @s[tag=!done] actionbar [{"text":"随从：","color":"dark_red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"minioncount","name":"@s"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/3","color":"white","bold":"true"},{"text":"         卡牌：","color":"blue","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"deckcount","name":"@s"},"color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/16","color":"white","bold":"true"}]
title @s[tag=done] actionbar [{"text":"随从：","color":"dark_red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"minioncount","name":"@s"},"color":"dark_red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/3","color":"dark_red","bold":"true"},{"text":"         卡牌：","color":"blue","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"deckcount","name":"@s"},"color":"blue","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/16","color":"blue","bold":"true"}]

fill -193 17 48 -193 18 49 minecraft:andesite_wall
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Tags:["cursor"]}}]}] at @s run function lobby:room1/card_scroll
#execute as @e[tag=chosen,tag=p_card,scores={cardboard=9..}] if score @s playerid = @a[tag=123,limit=1] playerid run tag @s add nextpage
#execute if entity @e[tag=nextpage] run tag @e[tag=card_scroll] remove deactivate
#execute unless entity @e[tag=nextpage] run tag @e[tag=card_scroll] add deactivate
#execute if entity @e[tag=nextpage] run data merge entity @e[tag=card_scroll,limit=1] {CustomNameVisible:1b}
#execute unless entity @e[tag=nextpage] run data merge entity @e[tag=card_scroll,limit=1] {CustomNameVisible:0b}




execute unless entity @e[tag=targetminion,scores={minionboard=1}] run data merge entity @e[tag=minion_1,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"左位随从\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetminion,scores={minionboard=2}] run data merge entity @e[tag=minion_2,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"中位随从\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetminion,scores={minionboard=3}] run data merge entity @e[tag=minion_3,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"右位随从\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetcard,scores={cardboard=1}] run data merge entity @e[tag=card1,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetcard,scores={cardboard=2}] run data merge entity @e[tag=card2,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetcard,scores={cardboard=3}] run data merge entity @e[tag=card3,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetcard,scores={cardboard=4}] run data merge entity @e[tag=card4,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetcard,scores={cardboard=5}] run data merge entity @e[tag=card5,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetcard,scores={cardboard=6}] run data merge entity @e[tag=card6,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetcard,scores={cardboard=7}] run data merge entity @e[tag=card7,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetcard,scores={cardboard=8}] run data merge entity @e[tag=card8,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetcard,scores={cardboard=9}] run data merge entity @e[tag=card9,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetcard,scores={cardboard=10}] run data merge entity @e[tag=card10,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetcard,scores={cardboard=11}] run data merge entity @e[tag=card11,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetcard,scores={cardboard=12}] run data merge entity @e[tag=card12,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetcard,scores={cardboard=13}] run data merge entity @e[tag=card13,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetcard,scores={cardboard=14}] run data merge entity @e[tag=card14,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetcard,scores={cardboard=15}] run data merge entity @e[tag=card15,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute unless entity @e[tag=targetcard,scores={cardboard=16}] run data merge entity @e[tag=card16,tag=display,tag=room1,limit=1] {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}


execute if entity @e[tag=targetminion,scores={minionboard=1}] as @e[tag=minion_1,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetminion,scores={minionboard=2}] as @e[tag=minion_2,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetminion,scores={minionboard=3}] as @e[tag=minion_3,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetcard,scores={cardboard=1}] as @e[tag=card1,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetcard,scores={cardboard=2}] as @e[tag=card2,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetcard,scores={cardboard=3}] as @e[tag=card3,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetcard,scores={cardboard=4}] as @e[tag=card4,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetcard,scores={cardboard=5}] as @e[tag=card5,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetcard,scores={cardboard=6}] as @e[tag=card6,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetcard,scores={cardboard=7}] as @e[tag=card7,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetcard,scores={cardboard=8}] as @e[tag=card8,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetcard,scores={cardboard=9}] as @e[tag=card9,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetcard,scores={cardboard=10}] as @e[tag=card10,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetcard,scores={cardboard=11}] as @e[tag=card11,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetcard,scores={cardboard=12}] as @e[tag=card12,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetcard,scores={cardboard=13}] as @e[tag=card13,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetcard,scores={cardboard=14}] as @e[tag=card14,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetcard,scores={cardboard=15}] as @e[tag=card15,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
execute if entity @e[tag=targetcard,scores={cardboard=16}] as @e[tag=card16,tag=display,tag=room1,limit=1] run function lobby:room1/deckbuildroom3
scoreboard players reset @s deckcount
scoreboard players reset @s minioncount
tag @e remove targetcard
tag @e remove targetminion
tag @e remove nextpage
tag @s remove done
tag @s remove 123