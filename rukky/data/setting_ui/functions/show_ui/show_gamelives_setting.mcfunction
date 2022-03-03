#ui_textタグのついたmobをy=250にTPし、killする
execute as @e[tag=ui_text] at @s run tp @s 0 250 0
execute as @e[tag=ui_text] run kill @s


#それぞれの画面に合わせたui_textモブを召喚
execute as @e[tag=ui_reference_point,limit=1] at @s run summon area_effect_cloud ~ ~3 ~ {UUID:[I;0,0,0,120000],CustomNameVisible:1b,Radius:0f,Duration:10000,Tags:["ui_text","sustain"],CustomName:'{"text":"残機数の設定"}'}
#残機1
execute as @e[tag=ui_reference_point,limit=1] at @s if score #game_master gamelives = #0 constant run summon area_effect_cloud ~ ~2.7 ~ {UUID:[I;0,0,0,120001],CustomNameVisible:1b,Radius:0f,Duration:10000,Tags:["ui_text","sustain"],CustomName:'{"text":"残機: 1"}'}
#残機2
execute as @e[tag=ui_reference_point,limit=1] at @s if score #game_master gamelives = #1 constant run summon area_effect_cloud ~ ~2.7 ~ {UUID:[I;0,0,0,120002],CustomNameVisible:1b,Radius:0f,Duration:10000,Tags:["ui_text","sustain"],CustomName:'{"text":"残機: 2"}'}
#残機2
execute as @e[tag=ui_reference_point,limit=1] at @s if score #game_master gamelives = #2 constant run summon area_effect_cloud ~ ~2.7 ~ {UUID:[I;0,0,0,120003],CustomNameVisible:1b,Radius:0f,Duration:10000,Tags:["ui_text","sustain"],CustomName:'{"text":"残機: 3"}'}
#残機2
execute as @e[tag=ui_reference_point,limit=1] at @s if score #game_master gamelives = #3 constant run summon area_effect_cloud ~ ~2.7 ~ {UUID:[I;0,0,0,120004],CustomNameVisible:1b,Radius:0f,Duration:10000,Tags:["ui_text","sustain"],CustomName:'{"text":"残機: 4"}'}
#残機2
execute as @e[tag=ui_reference_point,limit=1] at @s if score #game_master gamelives = #4 constant run summon area_effect_cloud ~ ~2.7 ~ {UUID:[I;0,0,0,120005],CustomNameVisible:1b,Radius:0f,Duration:10000,Tags:["ui_text","sustain"],CustomName:'{"text":"残機: 5"}'}

