
# Pregame tick functions
execute if score pregame UHCvariables matches 1 run tp @a[gamemode=survival] 0 71 0
execute if score pregame UHCvariables matches 1 run gamemode adventure @a[gamemode=survival]
execute if score pregame UHCvariables matches 1 run team join grace @a
execute if score pregame UHCvariables matches 1 run effect give @a saturation 2 5 true
execute if score pregame UHCvariables matches 1 run effect give @a resistance 2 5 true
execute if score pregame UHCvariables matches 1 run effect give @a regeneration 2 5 true

bossbar set timer players @a
execute store result bossbar timer value run scoreboard players get timer UHCvariables


execute if score suddenDeath UHCvariables matches 1 if score timer UHCvariables matches 130.. run fill 15 -45 15 -15 -45 -15 glass