#それぞれのスコアを確認し、最大値を超えたスコアは0に、負の値になっているスコアは最大値に修正する
execute if score #game_master gamemode > #game_master gamemode_max run scoreboard players set #game_master gamemode 0
execute if score #game_master gamemode < #0 constant run scoreboard players operation #game_master gamemode = #game_master gamemode_max

execute if score #game_master gamemap > #game_master gamemap_max run scoreboard players set #game_master gamemap 0
execute if score #game_master gamemap < #0 constant run scoreboard players operation #game_master gamemap = #game_master gamemap_max

execute if score #game_master gamelives > #game_master gamelives_max run scoreboard players set #game_master gamelives 0
execute if score #game_master gamelives < #0 constant run scoreboard players operation #game_master gamelives = #game_master gamelives_max

execute if score #game_master gametime > #game_master gametime_max run scoreboard players set #game_master gametime 0
execute if score #game_master gametime < #0 constant run scoreboard players operation #game_master gametime = #game_master gametime_max

execute if score #game_master setting_number > #game_master setting_number_max run scoreboard players set #game_master setting_number 0
execute if score #game_master setting_number < #0 constant run scoreboard players operation #game_master setting_number = #game_master setting_number_max