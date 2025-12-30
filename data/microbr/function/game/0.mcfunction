tellraw @a {"color":"red","bold":true,"text":"Final border size reached!"}
tellraw @a {"color":"dark_red","bold":true,"text":"Sudden death!"}

effect give @a glowing 100000 1 true

scoreboard players set suddenDeath UHCvariables 1

worldborder set 26 0

bossbar set minecraft:timer style progress
bossbar set minecraft:timer max 300