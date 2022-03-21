execute store result score #counter counter run data get entity @s Health 1
scoreboard players set @s dmgresist 1000
scoreboard players operation @s dmgresist -= #counter counter
scoreboard players reset #counter
data modify entity @s Health set value 1000f