execute unless score pregame UHCvariables matches 1 unless score suddenDeath UHCvariables matches 1 run scoreboard players remove timer UHCvariables 1
execute unless score pregame UHCvariables matches 1 if score suddenDeath UHCvariables matches 1 run scoreboard players add timer UHCvariables 1

# Mid game functions
execute if score timer UHCvariables matches 1080 if score suddenDeath UHCvariables matches 0 run function microbr:game/1080
execute if score timer UHCvariables matches 600 if score suddenDeath UHCvariables matches 0 run function microbr:game/600
execute if score timer UHCvariables matches 300 if score suddenDeath UHCvariables matches 0 run function microbr:game/300
execute if score timer UHCvariables matches ..0 run function microbr:game/0


# SUDDEN DEATH
execute if score timer UHCvariables matches 0 run execute store result score SDType UHCvariables run random value 1..2

# Warden Sudden Death
execute if score timer UHCvariables matches 120 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run function microbr:game/sdwarden
execute if score timer UHCvariables matches 130 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run summon minecraft:warden 0 -59 0 { Brain : { memories : { "minecraft:dig_cooldown" : { value : {}, ttl : 1000000L } } } }

execute if score timer UHCvariables matches 160 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run summon minecraft:warden 0 -59 0 { Brain : { memories : { "minecraft:dig_cooldown" : { value : {}, ttl : 1000000L } } } }
execute if score timer UHCvariables matches 160 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run tellraw @a [{"bold":true,"text":"Perish","color":"#240303","obfuscated":true},{"obfuscated":false,"text":"Perish.","color":"#DDDDDD"},{"text":"Perish","color":"#240303","obfuscated":true}]

execute if score timer UHCvariables matches 190 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run summon minecraft:warden 0 -59 0 { Brain : { memories : { "minecraft:dig_cooldown" : { value : {}, ttl : 1000000L } } } }
execute if score timer UHCvariables matches 190 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run tellraw @a [{"bold":true,"text":"Perish","color":"#240303","obfuscated":true},{"obfuscated":false,"text":"Perish.","color":"#DDDDDD"},{"text":"Perish","color":"#240303","obfuscated":true}]

execute if score timer UHCvariables matches 220 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run summon minecraft:warden 0 -59 0 { Brain : { memories : { "minecraft:dig_cooldown" : { value : {}, ttl : 1000000L } } } }
execute if score timer UHCvariables matches 220 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run tellraw @a [{"bold":true,"text":"Perish","color":"#240303","obfuscated":true},{"obfuscated":false,"text":"Perish.","color":"#DDDDDD"},{"text":"Perish","color":"#240303","obfuscated":true}]

execute if score timer UHCvariables matches 220 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run summon zombie 11 -59 11 {Invulnerable:true}
execute if score timer UHCvariables matches 220 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run summon zombie 11 -59 -11 {Invulnerable:true}
execute if score timer UHCvariables matches 220 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run summon zombie -11 -59 11 {Invulnerable:true}
execute if score timer UHCvariables matches 220 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run summon zombie 0 -59 0 {Invulnerable:true}
execute if score timer UHCvariables matches 220 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run summon vex 0 -50 0 {Invulnerable:true}
execute if score timer UHCvariables matches 220 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run summon phantom 0 -50 0 {Invulnerable:true}




execute if score timer UHCvariables matches 300 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run function microbr:game/endgamebow
execute if score timer UHCvariables matches 300 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run worldborder set 1 600
execute if score timer UHCvariables matches 300.. if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 1..2 run fill 0 -59 0 0 -46 0 air

# Dragon + Lava Sudden Death
#execute if score timer UHCvariables matches 0 if score suddenDeath UHCvariables matches 1 if score SDType UHCvariables matches 2 run summon minecraft:ender_dragon 0 200 0 {DragonPhase:0,PersistenceRequired:true,Invulnerable:true}


schedule function microbr:game/timer 1s