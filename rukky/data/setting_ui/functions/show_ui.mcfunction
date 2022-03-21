#ゲームモードの設定画面を表示
execute if score #game_master setting_number = #0 constant run function setting_ui:show_ui/show_gamemode_setting
#マップの設定画面を表示
execute if score #game_master setting_number = #1 constant run function setting_ui:show_ui/show_gamemap_setting
#残機数の設定画面を表示
execute if score #game_master setting_number = #2 constant run function setting_ui:show_ui/show_gamelives_setting
#制限時間の設定画面を表示
execute if score #game_master setting_number = #3 constant run function setting_ui:show_ui/show_gametime_setting