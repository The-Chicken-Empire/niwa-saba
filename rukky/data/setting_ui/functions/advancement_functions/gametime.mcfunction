#実績の消去
advancement revoke @s only setting_ui:attack_ui_mob/attack_gametime
#setting_numberスコアを変更
scoreboard players set #game_master setting_number 3
#スコアを修正
function setting_ui:fix_setting_scores
#UIを表示
function setting_ui:show_ui