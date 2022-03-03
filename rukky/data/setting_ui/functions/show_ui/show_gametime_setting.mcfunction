#ui_textタグのついたmobをy=250にTPし、killする
execute as @e[tag=ui_text] at @s run tp @s 0 250 0
execute as @e[tag=ui_text] run kill @s


#それぞれの画面に合わせたui_textモブを召喚
execute as @e[tag=ui_reference_point,limit=1] at @s run summon area_effect_cloud ~ ~3 ~ {UUID:[I;0,0,0,130000],CustomNameVisible:1b,Radius:0f,Duration:10000,Tags:["ui_text","sustain"],CustomName:'{"text":"ゲーム時間"}'}
#1分
execute as @e[tag=ui_reference_point,limit=1] at @s if score #game_master gametime = #0 constant run summon area_effect_cloud ~ ~2.7 ~ {UUID:[I;0,0,0,130001],CustomNameVisible:1b,Radius:0f,Duration:10000,Tags:["ui_text","sustain"],CustomName:'{"text":"1分"}'}
#3分
execute as @e[tag=ui_reference_point,limit=1] at @s if score #game_master gametime = #1 constant run summon area_effect_cloud ~ ~2.7 ~ {UUID:[I;0,0,0,130002],CustomNameVisible:1b,Radius:0f,Duration:10000,Tags:["ui_text","sustain"],CustomName:'{"text":"3分"}'}
#5分
execute as @e[tag=ui_reference_point,limit=1] at @s if score #game_master gametime = #2 constant run summon area_effect_cloud ~ ~2.7 ~ {UUID:[I;0,0,0,130003],CustomNameVisible:1b,Radius:0f,Duration:10000,Tags:["ui_text","sustain"],CustomName:'{"text":"5分"}'}
#7分
execute as @e[tag=ui_reference_point,limit=1] at @s if score #game_master gametime = #3 constant run summon area_effect_cloud ~ ~2.7 ~ {UUID:[I;0,0,0,130004],CustomNameVisible:1b,Radius:0f,Duration:10000,Tags:["ui_text","sustain"],CustomName:'{"text":"7分"}'}
#10分
execute as @e[tag=ui_reference_point,limit=1] at @s if score #game_master gametime = #4 constant run summon area_effect_cloud ~ ~2.7 ~ {UUID:[I;0,0,0,130005],CustomNameVisible:1b,Radius:0f,Duration:10000,Tags:["ui_text","sustain"],CustomName:'{"text":"10分"}'}