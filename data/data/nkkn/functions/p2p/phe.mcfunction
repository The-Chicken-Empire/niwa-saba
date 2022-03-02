scoreboard players operation @a[tag=ehp] hurtbyuuid = @s uuid
execute store result score @a[tag=ehp] hurtbyweapon run data get entity @s SelectedItem.tag.CustomModelData
scoreboard players operation @a[tag=ehp] lasthurtbyuuid = @s uuid
execute store result score @a[tag=ehp] lasthurtbyweapon run data get entity @s SelectedItem.tag.CustomModelData
scoreboard players set @a[tag=ehp] lasthurtbytimer 100
tag @a[tag=ehp] remove ehp
advancement revoke @s only nkkn:p2pphe