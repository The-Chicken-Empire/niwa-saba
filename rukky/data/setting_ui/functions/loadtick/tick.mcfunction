#setting_ui関連のモブに関する処理。
#sustainタグのついたmobのageを0に設定
execute as @e[tag=sustain] run data modify entity @s Age set value 0

#setting_ui_mobに透明と耐性を
effect give @e[tag=setting_ui_mob] resistance 10 100 true
effect give @e[tag=setting_ui_mob] invisibility 10 100 true 

#setting_ui_mobをno_colチームへ
team join no_col @e[tag=setting_ui_mob]