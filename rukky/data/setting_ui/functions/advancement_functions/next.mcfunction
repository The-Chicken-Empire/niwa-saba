#実績の消去
advancement revoke @s only setting_ui:attack_ui_mob/attack_next
#現在設定中の項目のスコアを1増加
execute if score #game_master setting_number = #0 constant run scoreboard players add #game_master gamemode 1
execute if score #game_master setting_number = #1 constant run scoreboard players add #game_master gamemap 1
execute if score #game_master setting_number = #2 constant run scoreboard players add #game_master gamelives 1
execute if score #game_master setting_number = #3 constant run scoreboard players add #game_master gametime 1
#スコアを修正
function setting_ui:fix_setting_scores
#UIを表示
function setting_ui:show_ui
#変更したのがgamemapなら、マップの生成
execute if score #game_master setting_number = #1 constant run function setting_ui:set_map