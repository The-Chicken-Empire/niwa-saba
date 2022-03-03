#基準点となるモブの召喚
summon area_effect_cloud ~ ~ ~ {UUID:[I;0,0,0,10000],Radius:0f,Duration:10000,Tags:["ui_reference_point",""]}

#setting_ui_mobの召喚
execute as @e[tag=ui_reference_point] at @s run function setting_ui:summon_setting_mobs