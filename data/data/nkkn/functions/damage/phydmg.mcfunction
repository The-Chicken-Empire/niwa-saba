scoreboard players set #phydmg counter 100
scoreboard players operation #phydmg counter -= @s phydef
execute if score #phydmg counter matches ..9 run scoreboard players set #phydmg counter 10
scoreboard players operation #phydmg counter *= @s phydmg
scoreboard players operation #phydmg counter /= #100 constant
scoreboard players operation #dmg counter += #phydmg counter
