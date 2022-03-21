#チームの設定。押し出しを無効化するためのチーム。
team add no_col
team modify no_col collisionRule never

#setting_ui_mobの召喚
function setting_ui:setting_mobs_operation

#スコアの追加
#定数系のスコア。#nに値nを保存。
scoreboard objectives add constant dummy
#ゲームの設定管理用のスコア。#game_masterに保存。
scoreboard objectives add gamemode dummy
scoreboard objectives add gamemap dummy
scoreboard objectives add gamelives dummy
scoreboard objectives add gametime dummy
scoreboard objectives add setting_number dummy
#それぞれの記録管理用スコアがとる値の最大値を記録ためのスコア
scoreboard objectives add gamemode_max dummy
scoreboard objectives add gamemap_max dummy
scoreboard objectives add gamelives_max dummy
scoreboard objectives add gametime_max dummy
scoreboard objectives add setting_number_max dummy

#それぞれのスコアの初期値の設定
#定数スコアの初期値
scoreboard players set #0 constant 0
scoreboard players set #1 constant 1
scoreboard players set #2 constant 2
scoreboard players set #3 constant 3
scoreboard players set #4 constant 4
scoreboard players set #5 constant 5
scoreboard players set #6 constant 6
scoreboard players set #7 constant 7
scoreboard players set #8 constant 8
scoreboard players set #9 constant 9
scoreboard players set #10 constant 10
#ゲーム設定管理用スコアの初期値
execute unless score #game_master gamemode >= #0 constant run scoreboard players set #game_master gamemode 0
execute unless score #game_master gamemap >= #0 constant run scoreboard players set #game_master gamemap 0
execute unless score #game_master gamelives >= #0 constant run scoreboard players set #game_master gamelives 0
execute unless score #game_master gametime >= #0 constant run scoreboard players set #game_master gametime 0
execute unless score #game_master setting_number >= #0 constant run scoreboard players set #game_master setting_number 0
#最大値記録用スコアの初期値
scoreboard players set #game_master gamemode_max 1
scoreboard players set #game_master gamemap_max 1
scoreboard players set #game_master gamelives_max 4
scoreboard players set #game_master gametime_max 4
scoreboard players set #game_master setting_number_max 3

#スコアの値が異常な場合に修正
function setting_ui:fix_setting_scores

#UIの表示
function setting_ui:show_ui

#mapを生成
function setting_ui:set_map

