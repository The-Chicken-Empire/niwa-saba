summon area_effect_cloud ^ ^ ^3 {Tags:["hit_far"]}
summon area_effect_cloud ^1.6 ^ ^3 {Tags:["hit_far"]}
summon area_effect_cloud ^-1.6 ^ ^3 {Tags:["hit_far"]}
summon area_effect_cloud ^1.6 ^ ^1 {Tags:["hit_near"]}
summon area_effect_cloud ^-1.6 ^ ^1 {Tags:["hit_near"]}

execute as @e[tag=hit_far] run tag @e[type=!player,distance=..3] add hit
execute as @e[tag=hit_cnear] run tag @e[type=!player,distance=..1.5] add hit

execute as @e[tag=hit] at @s run function hitbox_test:hit/magic_stick

execute positioned ~0 ~0.5 ~ run particle minecraft:explosion ^ ^ ^1 0 0 0 0.1 1 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.9

scoreboard players reset @s hitbox_text.carrot