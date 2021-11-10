execute if score roundtime system matches 1800 run data merge entity @s {CustomName:"[{\"text\":\"回合时间：90秒\",\"color\":\"aqua\",\"bold\":true}]"}
execute if score roundtime system matches 2400 run data merge entity @s {CustomName:"[{\"text\":\"回合时间：120秒\",\"color\":\"aqua\",\"bold\":true}]"}
execute if score roundtime system matches 3000 run data merge entity @s {CustomName:"[{\"text\":\"回合时间：150秒\",\"color\":\"aqua\",\"bold\":true}]"}
execute if score roundtime system matches 3600 run data merge entity @s {CustomName:"[{\"text\":\"回合时间：180秒\",\"color\":\"aqua\",\"bold\":true}]"}
execute if score roundtime system matches 9999 run data merge entity @s {CustomName:"[{\"text\":\"回合时间：无上限\",\"color\":\"aqua\",\"bold\":true}]"}