#初级界面——————————————————————————————————
execute if entity @s[tag=gamestart] run function lobby:entrepreproom
execute if entity @s[tag=roundtime] run function lobby:roundtime
execute if entity @s[tag=packswitch] run function lobby:packswitch
execute if entity @s[tag=fightbet] run function lobby:gambles/fightbet
execute if entity @s[tag=slotmachine] run function lobby:gambles/buttonslotmachine
execute if entity @s[tag=lottery1] run function lobby:gambles/buttonslottery1
execute if entity @s[tag=lottery10] run function lobby:gambles/buttonslottery10
#初级界面——————————————————————————————————

#构筑选卡包——————————————————————————————————
execute if entity @s[tag=pack,tag=display] run tag @s add selected
execute if entity @e[tag=room1,tag=selected,tag=p_minions] run scoreboard players set deckbuilder1 page 1
execute if entity @e[tag=room1,tag=selected,tag=p_cards] run scoreboard players set deckbuilder1 page 2
#execute if entity @e[tag=room1,tag=selected,tag=p_classic,tag=p_minion_2] run scoreboard players set deckbuilder1 page 111
execute if entity @e[tag=room1,tag=selected,tag=p_yuepunk,tag=p_minion_2] run scoreboard players set deckbuilder1 page 211
execute if entity @e[tag=room1,tag=selected,tag=p_knights,tag=p_minion_2] run scoreboard players set deckbuilder1 page 311
execute if entity @e[tag=room1,tag=selected,tag=p_constellations,tag=p_minion_2] run scoreboard players set deckbuilder1 page 411
execute if entity @e[tag=room1,tag=selected,tag=p_potato,tag=p_minion_2] run scoreboard players set deckbuilder1 page 511
execute if entity @e[tag=room1,tag=selected,tag=p_gods,tag=p_minion_2] run scoreboard players set deckbuilder1 page 611

execute if entity @e[tag=room1,tag=selected,tag=p_classic,tag=p_card_2] run scoreboard players set deckbuilder1 page 121
execute if entity @e[tag=room1,tag=selected,tag=p_yuepunk,tag=p_card_2] run scoreboard players set deckbuilder1 page 221
execute if entity @e[tag=room1,tag=selected,tag=p_knights,tag=p_card_2] run scoreboard players set deckbuilder1 page 321
execute if entity @e[tag=room1,tag=selected,tag=p_constellations,tag=p_card_2] run scoreboard players set deckbuilder1 page 421
execute if entity @e[tag=room1,tag=selected,tag=p_potato,tag=p_card_2] run scoreboard players set deckbuilder1 page 521
execute if entity @e[tag=room1,tag=selected,tag=p_gods,tag=p_card_2] run scoreboard players set deckbuilder1 page 621

execute if entity @e[tag=room1,tag=selected] run function lobby:room1/refresh


execute if entity @e[tag=room2,tag=selected,tag=p_minions] run scoreboard players set deckbuilder2 page 1
execute if entity @e[tag=room2,tag=selected,tag=p_cards] run scoreboard players set deckbuilder2 page 2
#execute if entity @e[tag=room2,tag=selected,tag=p_classic,tag=p_minion_2] run scoreboard players set deckbuilder2 page 111
execute if entity @e[tag=room2,tag=selected,tag=p_yuepunk,tag=p_minion_2] run scoreboard players set deckbuilder2 page 211
execute if entity @e[tag=room2,tag=selected,tag=p_knights,tag=p_minion_2] run scoreboard players set deckbuilder2 page 311
execute if entity @e[tag=room2,tag=selected,tag=p_constellations,tag=p_minion_2] run scoreboard players set deckbuilder2 page 411
execute if entity @e[tag=room2,tag=selected,tag=p_potato,tag=p_minion_2] run scoreboard players set deckbuilder2 page 511
execute if entity @e[tag=room2,tag=selected,tag=p_gods,tag=p_minion_2] run scoreboard players set deckbuilder2 page 611

execute if entity @e[tag=room2,tag=selected,tag=p_classic,tag=p_card_2] run scoreboard players set deckbuilder2 page 121
execute if entity @e[tag=room2,tag=selected,tag=p_yuepunk,tag=p_card_2] run scoreboard players set deckbuilder2 page 221
execute if entity @e[tag=room2,tag=selected,tag=p_knights,tag=p_card_2] run scoreboard players set deckbuilder2 page 321
execute if entity @e[tag=room2,tag=selected,tag=p_constellations,tag=p_card_2] run scoreboard players set deckbuilder2 page 421
execute if entity @e[tag=room2,tag=selected,tag=p_potato,tag=p_card_2] run scoreboard players set deckbuilder2 page 521
execute if entity @e[tag=room2,tag=selected,tag=p_gods,tag=p_card_2] run scoreboard players set deckbuilder2 page 621

execute if entity @e[tag=room2,tag=selected] run function lobby:room2/refresh

execute if entity @s[tag=pack,tag=display] run tag @s remove selected
#构筑选卡包——————————————————————————————————

#说明书——————————————————————————————————
execute if entity @s[tag=instructions,tag=Minion1] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一个随从。他属于玩家“米迦勒”，他是左位随从。\n        他正处于“离场”状态，对于对手玩家“路西法”来说，这个随从是隐藏的。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Minion2] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一个随从。他属于玩家“米迦勒”，他是中位随从。\n        他是一个在场随从，所有玩家均可查看该随从。\n        他有18点攻击力和12点生命值。\n        当他的生命值跌至0或更低时就会阵亡并进入“休眠”状态。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Minion3] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一个随从。他属于玩家“米迦勒”，他是右位随从。\n        他是一个在场随从，他拥有【暴走】和【格挡】增益。\n        这些增益会为他提供一些功能。\n        【暴走】可以使其每回合额外进行一次攻击。\n       【格挡】使其可以免疫下一次受到的伤害。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Minion4] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一个随从。他属于玩家“路西法”，他是左位随从。\n        他正处于“休眠”状态，他将无法攻击或“被动换位”。\n        在己方牌手的2个回合后唤醒。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Minion5] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一个随从。他属于玩家“路西法”，他是中位随从。\n        他正处于“眩晕”状态，他将无法攻击或“被动换位”。\n        在3个的回合结束后解除。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Minion6] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一个随从。他属于玩家“路西法”，他是右位随从。\n        他正处于“沉默”状态。他将无法发动他的技能。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Mascot1] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一个牌手。他属于玩家“米迦勒”。\n        他是玩家的代表。他拥有30点生命值。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Mascot2] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一个牌手。他属于玩家“路西法”。\n        他是玩家的代表。他拥有13点生命值。\n        当他的生命值跌至0或更低时就会阵亡\n        然后米迦勒就会获得对局的胜利。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if entity @s[tag=instructions,tag=Handcard1] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一张手牌。他属于玩家“米迦勒”。\n        玩家的手牌上限为7，意味着他只能保存最多7张手牌。\n        此时的“抽牌”行为会使被抽到的牌被“销毁”。\n        此时的“置入手牌”行为将无法执行。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Handcard2] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一张手牌。他属于玩家“米迦勒”。\n        玩家的手牌上限为7，意味着他只能保存最多7张手牌。\n        此时的“抽牌”行为会使被抽到的牌被“销毁”。\n        此时的“置入手牌”行为将无法执行。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Handcard3] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一张手牌。他属于玩家“米迦勒”。\n        米迦勒正在选择这张牌。当他右键时，他将消耗1点“能量”并使用它。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Handcard5] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一张手牌。他属于玩家“米迦勒”。\n        玩家的手牌上限为7，意味着他只能保存最多7张手牌。\n        此时的“抽牌”行为会使被抽到的牌被“销毁”。\n        此时的“置入手牌”行为将无法执行。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Handcard4] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一张手牌。他属于玩家“米迦勒”。\n        玩家的手牌上限为7，意味着他只能保存最多7张手牌。\n        此时的“抽牌”行为会使被抽到的牌被“销毁”。\n        此时的“置入手牌”行为将无法执行。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Handcard6] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一张手牌。他属于玩家“米迦勒”。\n        玩家的手牌上限为7，意味着他只能保存最多7张手牌。\n        此时的“抽牌”行为会使被抽到的牌被“销毁”。\n        此时的“置入手牌”行为将无法执行。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Handcard7] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一张手牌。他属于玩家“米迦勒”。\n        玩家的手牌上限为7，意味着他只能保存最多7张手牌。\n        此时的“抽牌”行为会使被抽到的牌被“销毁”。\n        此时的“置入手牌”行为将无法执行。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if entity @s[tag=instructions,tag=Handcard14] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一张手牌。他属于玩家“路西法”。\n        蓝色，这是一张法术牌。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Handcard15] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一张手牌。他属于玩家“路西法”。\n        黄色，这是一张环境牌。\n        使用后，路西法将开启一个存在3个回合的“环境”。\n        环境类似于一个无法被沉默，不存在于场上的随从。\n        如果玩家在已有就绪的“环境”时使用另一张环境牌，\n        “摧毁”老的环境并将新的环境置于场上。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Handcard16] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一张手牌。他属于玩家“路西法”。\n        绿色，这是一张陷阱牌。\n        使用后，路西法将布置一个陷阱。\n        在路西法的回合外，任何相关行为都有可能触发陷阱。\n        每名玩家同时至多只能布置4个不同名的陷阱。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


execute if entity @s[tag=instructions,tag=Environment] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一个环境。他属于玩家“米迦勒”。\n        所有玩家均可查看。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Trap] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一个陷阱。他属于玩家“路西法”。\n        在尚未触发时，只有路西法可查看。\n        当米迦勒的行为满足了陷阱的条件，陷阱将公布并触发。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if entity @s[tag=instructions,tag=Player1] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一个玩家。他是“米迦勒”。\n        玩家可以在自己的回合内进行操作。\n        大部分情况下，使用牌、对随从下达指令 均会消耗1点“能量”。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Player2] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一个玩家。他是“路西法”。\n        可以进行的操作包括：\n        -使用牌：选定2-8号物品栏来使用相应的手牌。\n        -随从入场指令：选定1号物品栏，右键“离场”的随从来令其入场。\n        -随从攻击指令：选定1号物品栏，右键“已入场”的随从来令其发动攻击。\n        -随从换位指令：选定1号物品栏，潜行并右键“左位随从”\n          或“右位随从”令其与“中位随从换位”。\n        -结束回合：选定1号或9号物品栏，右键“回合结束”按钮来结束你的回合。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Endround] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是回合结束按钮。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Deck1] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一个牌堆。他属于“米迦勒”。\n        玩家携带的卡牌将被储存在这里。\n        每当回合开始时，必须抽一张牌。\n        抽牌时，如果牌堆已空，则立刻判负。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Deck2] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一个牌堆。他属于“路西法”。\n        牌堆的最大容量为32张牌。\n        抽牌时，玩家将抽取牌堆顶的一张牌。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Dcpile1] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一个弃牌堆。他属于“米迦勒”。\n        法术牌在结算后进入弃牌堆。\n        环境在被摧毁后进入弃牌堆。\n        陷阱在触发后进入弃牌堆。\n        被弃置的牌进入弃牌堆。\n        进入弃牌堆的牌将被置于弃牌堆顶。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=instructions,tag=Dcpile2] run tellraw @a[tag=click] [{"text":"[教程]\n","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"        这是一个弃牌堆。他属于“路西法”。\n        被“销毁”的牌不进入弃牌堆。\n        因抽到带有“抽到时释放”而释放的牌不会在结算后进入弃牌堆。","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

#说明书——————————————————————————————————

#构筑翻页——————————————————————————————————
execute if entity @s[tag=switchpage,tag=display] run tag @s add selected

execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 1 run scoreboard players set deckbuilder1 page 0
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 2 run scoreboard players set deckbuilder1 page 0

execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 211 run scoreboard players set deckbuilder1 page 1
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 311 run scoreboard players set deckbuilder1 page 1
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 312 run scoreboard players set deckbuilder1 page 311
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 411 run scoreboard players set deckbuilder1 page 1
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 412 run scoreboard players set deckbuilder1 page 411
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 511 run scoreboard players set deckbuilder1 page 1
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 512 run scoreboard players set deckbuilder1 page 511
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 611 run scoreboard players set deckbuilder1 page 1
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 612 run scoreboard players set deckbuilder1 page 611

execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 121 run scoreboard players set deckbuilder1 page 2
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 122 run scoreboard players set deckbuilder1 page 121
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 123 run scoreboard players set deckbuilder1 page 122
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 221 run scoreboard players set deckbuilder1 page 2
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 222 run scoreboard players set deckbuilder1 page 221
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 321 run scoreboard players set deckbuilder1 page 2
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 322 run scoreboard players set deckbuilder1 page 321
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 421 run scoreboard players set deckbuilder1 page 2
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 422 run scoreboard players set deckbuilder1 page 421
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 521 run scoreboard players set deckbuilder1 page 2
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 522 run scoreboard players set deckbuilder1 page 521
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 621 run scoreboard players set deckbuilder1 page 2
execute if entity @e[tag=selected,tag=pageup,tag=room1] if score deckbuilder1 page matches 622 run scoreboard players set deckbuilder1 page 621

execute if entity @e[tag=selected,tag=pagedown,tag=room1] if score deckbuilder1 page matches 311 run scoreboard players set deckbuilder1 page 312
execute if entity @e[tag=selected,tag=pagedown,tag=room1] if score deckbuilder1 page matches 411 run scoreboard players set deckbuilder1 page 412
execute if entity @e[tag=selected,tag=pagedown,tag=room1] if score deckbuilder1 page matches 511 run scoreboard players set deckbuilder1 page 512
execute if entity @e[tag=selected,tag=pagedown,tag=room1] if score deckbuilder1 page matches 611 run scoreboard players set deckbuilder1 page 612

execute if entity @e[tag=selected,tag=pagedown,tag=room1] if score deckbuilder1 page matches 122 run scoreboard players set deckbuilder1 page 123
execute if entity @e[tag=selected,tag=pagedown,tag=room1] if score deckbuilder1 page matches 121 run scoreboard players set deckbuilder1 page 122
execute if entity @e[tag=selected,tag=pagedown,tag=room1] if score deckbuilder1 page matches 221 run scoreboard players set deckbuilder1 page 222
execute if entity @e[tag=selected,tag=pagedown,tag=room1] if score deckbuilder1 page matches 321 run scoreboard players set deckbuilder1 page 322
execute if entity @e[tag=selected,tag=pagedown,tag=room1] if score deckbuilder1 page matches 421 run scoreboard players set deckbuilder1 page 422
execute if entity @e[tag=selected,tag=pagedown,tag=room1] if score deckbuilder1 page matches 521 run scoreboard players set deckbuilder1 page 522
execute if entity @e[tag=selected,tag=pagedown,tag=room1] if score deckbuilder1 page matches 621 run scoreboard players set deckbuilder1 page 622


execute if entity @e[tag=selected,tag=room1] run function lobby:room1/refresh


execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 1 run scoreboard players set deckbuilder2 page 0
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 2 run scoreboard players set deckbuilder2 page 0

execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 211 run scoreboard players set deckbuilder2 page 1
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 311 run scoreboard players set deckbuilder2 page 1
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 312 run scoreboard players set deckbuilder2 page 311
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 411 run scoreboard players set deckbuilder2 page 1
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 412 run scoreboard players set deckbuilder2 page 411
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 511 run scoreboard players set deckbuilder2 page 1
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 512 run scoreboard players set deckbuilder2 page 511
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 611 run scoreboard players set deckbuilder2 page 1
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 612 run scoreboard players set deckbuilder2 page 611

execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 121 run scoreboard players set deckbuilder2 page 2
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 122 run scoreboard players set deckbuilder2 page 121
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 123 run scoreboard players set deckbuilder2 page 122
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 221 run scoreboard players set deckbuilder2 page 2
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 222 run scoreboard players set deckbuilder2 page 221
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 321 run scoreboard players set deckbuilder2 page 2
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 322 run scoreboard players set deckbuilder2 page 321
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 421 run scoreboard players set deckbuilder2 page 2
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 422 run scoreboard players set deckbuilder2 page 421
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 521 run scoreboard players set deckbuilder2 page 2
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 522 run scoreboard players set deckbuilder2 page 521
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 621 run scoreboard players set deckbuilder2 page 2
execute if entity @e[tag=selected,tag=pageup,tag=room2] if score deckbuilder2 page matches 622 run scoreboard players set deckbuilder2 page 621

execute if entity @e[tag=selected,tag=pagedown,tag=room2] if score deckbuilder2 page matches 311 run scoreboard players set deckbuilder2 page 312
execute if entity @e[tag=selected,tag=pagedown,tag=room2] if score deckbuilder2 page matches 411 run scoreboard players set deckbuilder2 page 412
execute if entity @e[tag=selected,tag=pagedown,tag=room2] if score deckbuilder2 page matches 511 run scoreboard players set deckbuilder2 page 512
execute if entity @e[tag=selected,tag=pagedown,tag=room2] if score deckbuilder2 page matches 611 run scoreboard players set deckbuilder2 page 612

execute if entity @e[tag=selected,tag=pagedown,tag=room2] if score deckbuilder2 page matches 122 run scoreboard players set deckbuilder2 page 123
execute if entity @e[tag=selected,tag=pagedown,tag=room2] if score deckbuilder2 page matches 121 run scoreboard players set deckbuilder2 page 122
execute if entity @e[tag=selected,tag=pagedown,tag=room2] if score deckbuilder2 page matches 221 run scoreboard players set deckbuilder2 page 222
execute if entity @e[tag=selected,tag=pagedown,tag=room2] if score deckbuilder2 page matches 321 run scoreboard players set deckbuilder2 page 322
execute if entity @e[tag=selected,tag=pagedown,tag=room2] if score deckbuilder2 page matches 421 run scoreboard players set deckbuilder2 page 422
execute if entity @e[tag=selected,tag=pagedown,tag=room2] if score deckbuilder2 page matches 521 run scoreboard players set deckbuilder2 page 522
execute if entity @e[tag=selected,tag=pagedown,tag=room2] if score deckbuilder2 page matches 621 run scoreboard players set deckbuilder2 page 622


execute if entity @e[tag=selected,tag=room2] run function lobby:room2/refresh

execute if entity @s[tag=switchpage,tag=display] run tag @s remove selected
#构筑翻页——————————————————————————————————


#构筑删除牌——————————————————————————————————
execute if score @a[tag=click,limit=1] sneak matches 0 as @s[tag=p_card,tag=chosen] run tag @s add selected
execute if score @a[tag=click,tag=preparing_hold1,limit=1] sneak matches 0 as @s[tag=p_card,tag=chosen] run function lobby:room1/carddelete
execute if score @a[tag=click,tag=preparing_hold2,limit=1] sneak matches 0 as @s[tag=p_card,tag=chosen] run function lobby:room2/carddelete
execute if score @a[tag=click,limit=1] sneak matches 0 run tag @s remove selected
#构筑删除牌——————————————————————————————————


#构筑选牌——————————————————————————————————
execute if score @a[tag=click,limit=1] sneak matches 0 as @s[tag=p_card,tag=!chosen] run tag @s add selected
execute if score @a[tag=click,tag=preparing_hold1,limit=1] sneak matches 0 as @s[tag=p_card,tag=!chosen] run function lobby:room1/cardpick
execute if score @a[tag=click,tag=preparing_hold2,limit=1] sneak matches 0 as @s[tag=p_card,tag=!chosen] run function lobby:room2/cardpick
execute if score @a[tag=click,limit=1] sneak matches 0 as @s run tag @s remove selected
#构筑选牌——————————————————————————————————


#构筑删除随从——————————————————————————————————
execute if score @a[tag=click,limit=1] sneak matches 0 as @s[tag=minion2,tag=chosen] run tag @s add selected
execute if score @a[tag=click,tag=preparing_hold1,limit=1] sneak matches 0 as @s[tag=minion2,tag=chosen] run function lobby:room1/miniondelete
execute if score @a[tag=click,tag=preparing_hold2,limit=1] sneak matches 0 as @s[tag=minion2,tag=chosen] run function lobby:room2/miniondelete
execute if score @a[tag=click,limit=1] sneak matches 0 run tag @s remove selected
#构筑删除随从——————————————————————————————————


#构筑选随从——————————————————————————————————
execute if score @a[tag=click,limit=1] sneak matches 0 as @s[tag=minion2,tag=!chosen] run tag @s add selected
execute if score @a[tag=click,tag=preparing_hold1,limit=1] sneak matches 0 as @s[tag=minion2,tag=!chosen] run function lobby:room1/minionpick
execute if score @a[tag=click,tag=preparing_hold2,limit=1] sneak matches 0 as @s[tag=minion2,tag=!chosen] run function lobby:room2/minionpick
execute if score @a[tag=click,limit=1] sneak matches 0 run tag @s remove selected
#构筑选随从——————————————————————————————————

#查看随从——————————————————————————————————
execute if score @a[tag=click,limit=1] sneak matches 1.. if entity @s[tag=minion2] run tag @s add selected
execute if score @a[tag=click,limit=1] sneak matches 1.. if entity @s[tag=minion2] run function ingame:minion/datacheck2
execute if score @a[tag=click,limit=1] sneak matches 1.. if entity @s[tag=minion2] run tag @s remove selected
#查看随从——————————————————————————————————

#查看牌——————————————————————————————————
execute if score @a[tag=click,limit=1] sneak matches 1.. if entity @s[tag=p_card] run tag @s add selected
execute if score @a[tag=click,limit=1] sneak matches 1.. if entity @s[tag=p_card] run function ingame:handcard/datacheck
execute if score @a[tag=click,limit=1] sneak matches 1.. if entity @s[tag=p_card] run tag @s remove selected
#查看牌——————————————————————————————————


execute as @a[tag=click] at @s run playsound minecraft:block.note_block.bit block @s ~ ~ ~ 3 1.4 1

tag @s remove hit