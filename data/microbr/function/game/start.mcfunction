scoreboard players set pregame UHCvariables 0

gamemode survival @a

worldborder set 500 2400

scoreboard players set timer UHCvariables 1200
scoreboard players set suddenDeath UHCvariables 0

time set day

kill @e[type=item]
clear @a
give @a cooked_beef 5

tellraw @a {"text":"The game has started! Good luck!","color":"gold","bold":true}
title @a title {"text":"Begin!","color":"green","bold":true}

fill 2 70 2 -2 70 -2 air

function microbr:game/timer