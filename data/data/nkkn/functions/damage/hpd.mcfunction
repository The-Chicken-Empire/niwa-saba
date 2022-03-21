function nkkn:damage/hpview
scoreboard players operation #hpd counter = @s HPper
scoreboard players operation #hpd counter /= #5 constant
execute if score #hpd counter matches ..4 run attribute @s generic.max_health modifier add eaf6d962-1efc-4bfd-8944-1 hpd1 -16 add
execute if score #hpd counter matches ..4 run scoreboard players add #hpd counter 16
execute if score #hpd counter matches ..12 run attribute @s generic.max_health modifier add eaf6d962-1efc-4bfd-8944-2 hpd2 -8 add
execute if score #hpd counter matches ..12 run scoreboard players add #hpd counter 8
execute if score #hpd counter matches ..16 run attribute @s generic.max_health modifier add eaf6d962-1efc-4bfd-8944-3 hpd3 -4 add
execute if score #hpd counter matches ..16 run scoreboard players add #hpd counter 4
execute if score #hpd counter matches ..18 run attribute @s generic.max_health modifier add eaf6d962-1efc-4bfd-8944-4 hpd4 -2 add
execute if score #hpd counter matches ..18 run scoreboard players add #hpd counter 2
execute if score #hpd counter matches ..19 run attribute @s generic.max_health modifier add eaf6d962-1efc-4bfd-8944-5 hpd5 -1 add
execute if score #hpd counter matches ..19 run scoreboard players add #hpd counter 1
effect give @s instant_health 1 100 true
scoreboard players operation @s HPprevious = @s HP
scoreboard players reset #hpd
tag @s remove hpd
tag @s add hpd2
