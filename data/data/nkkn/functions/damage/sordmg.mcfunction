scoreboard players set #sordmg counter 100
scoreboard players operation #sordmg counter -= @s sordef
execute if score #sordmg counter matches ..9 run scoreboard players set #sordmg counter 10
scoreboard players operation #sordmg counter *= @s sordmg
scoreboard players operation #sordmg counter /= #100 constant
scoreboard players operation #dmg counter += #sordmg counter