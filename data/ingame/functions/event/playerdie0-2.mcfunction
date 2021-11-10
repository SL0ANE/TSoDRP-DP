summon minecraft:fireball ~ ~6 ~ {direction:[0.0,-1.0,0.0],Motion:[0.0,-3.0,0.0],ExplosionPower:1}
particle minecraft:explosion_emitter ~ ~ ~ 0.3 0.3 0.3 1 1 force
gamemode spectator @s

execute if entity @s[tag=!surrender] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"死亡！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=surrender] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"选择投降！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

function ingame:finish