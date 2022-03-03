scoreboard players operation #hurtbyuuid counter = @s hurtbyuuid
execute as @e if score @s uuid = #hurtbyuuid counter run tag @s add attacker
execute if score @s dmgresist matches 1.. run scoreboard players operation @s phydmg = @s dmgresist
execute if score @s phydmg matches 1.. run function nkkn:damage/phydmg
execute if score @s sordmg matches 1.. run function nkkn:damage/sordmg
scoreboard players operation @s HP -= #dmg counter
execute if score @s HP > @s HPmax run scoreboard players operation @s HP = @s HPmax
function nkkn:damage/hpview
scoreboard players reset #hurtbyuuid
scoreboard players reset #dmg
scoreboard players reset #phydmg
scoreboard players reset #sordmg
scoreboard players set @s phydmg 0
scoreboard players set @s sordmg 0
scoreboard players set @s dmgresist 0
tag @e[tag=attacker] remove attacker