tag @e[tag=mob,nbt=!{Health:1000f}] add victim
execute as @e[tag=mob,nbt=!{Health:1000f}] run data modify entity @s Health set value 1000f
execute store result score @e[tag=victim] hurtbyweapon run data get entity @s SelectedItem.tag.CustomModelData
scoreboard players operation @e[tag=victim] hurtbyuuid = @s uuid
tag @e[tag=victim] remove victim
advancement revoke @s only nkkn:p2ephe