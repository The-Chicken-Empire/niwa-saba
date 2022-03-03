#ui_textタグのついたmobをy=250にTPし、killする
execute as @e[tag=ui_text] at @s run tp @s 0 250 0
execute as @e[tag=ui_text] run kill @s


#それぞれの画面に合わせたui_textモブを召喚
execute as @e[tag=ui_reference_point,limit=1] at @s run summon area_effect_cloud ~ ~3 ~ {UUID:[I;0,0,0,100000],CustomNameVisible:1b,Radius:0f,Duration:10000,Tags:["ui_text","sustain"],CustomName:'{"text":"ゲームモード"}'}
#デスマッチ
execute as @e[tag=ui_reference_point,limit=1] at @s if score #game_master gamemode = #0 constant run summon area_effect_cloud ~ ~2.7 ~ {UUID:[I;0,0,0,100001],CustomNameVisible:1b,Radius:0f,Duration:10000,Tags:["ui_text","sustain"],CustomName:'{"text":"デスマッチ"}'}
#チームデスマッチ
execute as @e[tag=ui_reference_point,limit=1] at @s if score #game_master gamemode = #1 constant run summon area_effect_cloud ~ ~2.7 ~ {UUID:[I;0,0,0,100002],CustomNameVisible:1b,Radius:0f,Duration:10000,Tags:["ui_text","sustain"],CustomName:'{"text":"チームデスマッチ"}'}
