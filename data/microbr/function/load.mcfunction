scoreboard objectives add UHCvariables dummy

bossbar add timer {"color":"gold","text":"Timer"}
bossbar set timer max 1200
bossbar set timer style notched_20

team add grace "Grace"
team modify grace friendlyFire false
team modify grace collisionRule never

gamerule locator_bar false

worldborder center 0.5 0.5

execute unless score reset UHCvariables matches 1 run function microbr:pregame/pregame

scoreboard players set reset UHCvariables 1
scoreboard players set suddenDeath UHCvariables 0

worldborder warning time 30