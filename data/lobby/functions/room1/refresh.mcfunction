kill @e[tag=!chosen,tag=display,tag=gamemob,x=-191.5,y=16,z=57,dx=20,dy=16,dz=-32]
execute if score deckbuilder1 page matches 0 run function lobby:room1/page0
execute if score deckbuilder1 page matches 1 run function lobby:room1/page1
execute if score deckbuilder1 page matches 2 run function lobby:room1/page2
execute if score deckbuilder1 page matches 211 run function lobby:room1/page211
execute if score deckbuilder1 page matches 311 run function lobby:room1/page311
execute if score deckbuilder1 page matches 312 run function lobby:room1/page312
execute if score deckbuilder1 page matches 411 run function lobby:room1/page411
execute if score deckbuilder1 page matches 412 run function lobby:room1/page412
execute if score deckbuilder1 page matches 511 run function lobby:room1/page511
execute if score deckbuilder1 page matches 512 run function lobby:room1/page512
execute if score deckbuilder1 page matches 611 run function lobby:room1/page611
execute if score deckbuilder1 page matches 612 run function lobby:room1/page612


execute if score deckbuilder1 page matches 121 run function lobby:room1/page121
execute if score deckbuilder1 page matches 122 run function lobby:room1/page122
execute if score deckbuilder1 page matches 123 run function lobby:room1/page123
execute if score deckbuilder1 page matches 221 run function lobby:room1/page221
execute if score deckbuilder1 page matches 222 run function lobby:room1/page222
execute if score deckbuilder1 page matches 321 run function lobby:room1/page321
execute if score deckbuilder1 page matches 322 run function lobby:room1/page322
execute if score deckbuilder1 page matches 421 run function lobby:room1/page421
execute if score deckbuilder1 page matches 422 run function lobby:room1/page422
execute if score deckbuilder1 page matches 521 run function lobby:room1/page521
execute if score deckbuilder1 page matches 522 run function lobby:room1/page522
execute if score deckbuilder1 page matches 621 run function lobby:room1/page621
execute if score deckbuilder1 page matches 622 run function lobby:room1/page622



summon minecraft:area_effect_cloud -183.0 21.0 57.7 {CustomName:"[{\"text\":\"你的卡组\",\"color\":\"green\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["your_deck","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -180.5 19 57.7 {CustomName:"[{\"text\":\"随从\",\"color\":\"dark_red\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["your_minions","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -181.5 19.5 57.7 {CustomName:"[{\"text\":\"左位随从\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["minion_1","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -181.5 18.5 57.7 {CustomName:"[{\"text\":\"中位随从\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["minion_2","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -181.5 17.5 57.7 {CustomName:"[{\"text\":\"右位随从\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["minion_3","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -184.0 19 57.7 {CustomName:"[{\"text\":\"卡牌\",\"color\":\"blue\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["your_cards","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -185.0 20.5 57.7 {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["card1","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -185.0 20.25 57.7 {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["card2","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -185.0 20.0 57.7 {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["card3","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -185.0 19.75 57.7 {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["card4","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -185.0 19.5 57.7 {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["card5","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -185.0 19.25 57.7 {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["card6","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -185.0 19.0 57.7 {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["card7","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -185.0 18.75 57.7 {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["card8","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -185.0 18.5 57.7 {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["card9","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -185.0 18.25 57.7 {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["card10","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -185.0 18.0 57.7 {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["card11","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -185.0 17.75 57.7 {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["card12","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -185.0 17.5 57.7 {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["card13","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -185.0 17.25 57.7 {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["card14","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -185.0 17.0 57.7 {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["card15","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}
summon minecraft:area_effect_cloud -185.0 16.75 57.7 {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["card16","word","gamemob","room1","display"],CustomNameVisible:1b,Duration:10000s}

