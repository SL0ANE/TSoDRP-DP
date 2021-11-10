execute unless score @e[tag=slot1,tag=sm_display,limit=1] number = @e[tag=slot2,tag=sm_display,limit=1] number unless score @e[tag=slot2,tag=sm_display,limit=1] number = @e[tag=slot3,tag=sm_display,limit=1] number unless score @e[tag=slot3,tag=sm_display,limit=1] number = @e[tag=slot1,tag=sm_display,limit=1] number run scoreboard players set slotmachine system 60


execute if score @e[tag=slot1,tag=sm_display,limit=1] number = @e[tag=slot2,tag=sm_display,limit=1] number unless score @e[tag=slot2,tag=sm_display,limit=1] number = @e[tag=slot3,tag=sm_display,limit=1] number unless score @e[tag=slot3,tag=sm_display,limit=1] number = @e[tag=slot1,tag=sm_display,limit=1] number run scoreboard players set slotmachine system 160
execute unless score @e[tag=slot1,tag=sm_display,limit=1] number = @e[tag=slot2,tag=sm_display,limit=1] number if score @e[tag=slot2,tag=sm_display,limit=1] number = @e[tag=slot3,tag=sm_display,limit=1] number unless score @e[tag=slot3,tag=sm_display,limit=1] number = @e[tag=slot1,tag=sm_display,limit=1] number run scoreboard players set slotmachine system 160
execute unless score @e[tag=slot1,tag=sm_display,limit=1] number = @e[tag=slot2,tag=sm_display,limit=1] number unless score @e[tag=slot2,tag=sm_display,limit=1] number = @e[tag=slot3,tag=sm_display,limit=1] number if score @e[tag=slot3,tag=sm_display,limit=1] number = @e[tag=slot1,tag=sm_display,limit=1] number run scoreboard players set slotmachine system 160


execute if score @e[tag=slot1,tag=sm_display,limit=1] number = @e[tag=slot2,tag=sm_display,limit=1] number if score @e[tag=slot2,tag=sm_display,limit=1] number = @e[tag=slot3,tag=sm_display,limit=1] number run scoreboard players set slotmachine system 140
execute if score @e[tag=slot1,tag=sm_display,limit=1] number matches 100 if score @e[tag=slot2,tag=sm_display,limit=1] number matches 100 if score @e[tag=slot3,tag=sm_display,limit=1] number matches 100 run scoreboard players set slotmachine system 110
