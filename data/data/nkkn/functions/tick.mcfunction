effect give @a resistance 1 4 true
#ダメージ処理
execute if entity @e[tag=mob,nbt=!{Health:1000f},limit=1] as @e[tag=mob,nbt=!{Health:1000f}] run function nkkn:damage/entityenviroment
execute if entity @e[predicate=nkkn:damaged,limit=1] as @e[predicate=nkkn:damaged] run function nkkn:damage/main
#HPMPCT見た目
execute if entity @a[tag=hpd2,limit=1] run scoreboard players add @a[tag=hpd2] hpd 1
execute if entity @a[tag=hpd2,limit=1,scores={hpd=2..}] as @a[tag=hpd2,scores={hpd=2..}] run function nkkn:damage/hpd2
execute as @a unless score @s HP = @s HPprevious run tag @s add hpd
execute if entity @a[tag=hpd,limit=1] as @a[tag=hpd] run function nkkn:damage/hpd
execute as @a run title @s actionbar [{"bold":true,"italic":false,"color":"dark_red","text":"HP:"},{"score":{"name":"@s","objective":"HPint"}},{"text":"."},{"score":{"name":"@s","objective":"HPdec"}},{"text":"/"},{"score":{"name":"@s","objective":"HPmaxint"}},{"color":"aqua","text":" MP:"},{"color":"aqua","score":{"name":"@s","objective":"MP"}},{"color":"aqua","text":"/100"}]




#mob処理
execute if entity @e[type=!player,tag=!nomob,tag=!flaged,limit=1] as @e[type=!player,tag=!nomob,tag=!flaged] run function nkkn:mobflag