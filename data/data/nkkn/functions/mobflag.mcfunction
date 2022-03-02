    scoreboard players add #flag constant 1
    scoreboard players operation #flag constant %= #32768 constant
    execute if score #flag constant matches 0 run scoreboard players add #flag constant 1
    scoreboard players operation #counter counter = #flag constant
    scoreboard players operation #counter counter *= #-1 constant
    scoreboard players operation @s uuid = #counter counter
    scoreboard players reset #counter
# Clone
    scoreboard players operation $CloneFlagIndex counter = #flag constant
# FlagIndex << 16
    scoreboard players operation $CloneFlagIndex counter *= #65536 constant
# オーバーフローしてたらtag追加
    execute if score $CloneFlagIndex counter matches 00.. run tag @s add FindFlag0.0
    execute if score $CloneFlagIndex counter matches ..-1 run tag @s add FindFlag0.1
# 0になるまでやる
    scoreboard players operation $CloneFlagIndex counter *= #2 constant
    execute if score $CloneFlagIndex counter matches 00.. run tag @s add FindFlag1.0
    execute if score $CloneFlagIndex counter matches ..-1 run tag @s add FindFlag1.1
    scoreboard players operation $CloneFlagIndex counter *= #2 constant
    execute if score $CloneFlagIndex counter matches 00.. run tag @s add FindFlag2.0
    execute if score $CloneFlagIndex counter matches ..-1 run tag @s add FindFlag2.1
    scoreboard players operation $CloneFlagIndex counter *= #2 constant
    execute if score $CloneFlagIndex counter matches 00.. run tag @s add FindFlag3.0
    execute if score $CloneFlagIndex counter matches ..-1 run tag @s add FindFlag3.1
    scoreboard players operation $CloneFlagIndex counter *= #2 constant
    execute if score $CloneFlagIndex counter matches 00.. run tag @s add FindFlag4.0
    execute if score $CloneFlagIndex counter matches ..-1 run tag @s add FindFlag4.1
    scoreboard players operation $CloneFlagIndex counter *= #2 constant
    execute if score $CloneFlagIndex counter matches 00.. run tag @s add FindFlag5.0
    execute if score $CloneFlagIndex counter matches ..-1 run tag @s add FindFlag5.1
    scoreboard players operation $CloneFlagIndex counter *= #2 constant
    execute if score $CloneFlagIndex counter matches 00.. run tag @s add FindFlag6.0
    execute if score $CloneFlagIndex counter matches ..-1 run tag @s add FindFlag6.1
    scoreboard players operation $CloneFlagIndex counter *= #2 constant
    execute if score $CloneFlagIndex counter matches 00.. run tag @s add FindFlag7.0
    execute if score $CloneFlagIndex counter matches ..-1 run tag @s add FindFlag7.1
    scoreboard players operation $CloneFlagIndex counter *= #2 constant
    execute if score $CloneFlagIndex counter matches 00.. run tag @s add FindFlag8.0
    execute if score $CloneFlagIndex counter matches ..-1 run tag @s add FindFlag8.1
    scoreboard players operation $CloneFlagIndex counter *= #2 constant
    execute if score $CloneFlagIndex counter matches 00.. run tag @s add FindFlag9.0
    execute if score $CloneFlagIndex counter matches ..-1 run tag @s add FindFlag9.1
    scoreboard players operation $CloneFlagIndex counter *= #2 constant
    execute if score $CloneFlagIndex counter matches 00.. run tag @s add FindFlag10.0
    execute if score $CloneFlagIndex counter matches ..-1 run tag @s add FindFlag10.1
    scoreboard players operation $CloneFlagIndex counter *= #2 constant
    execute if score $CloneFlagIndex counter matches 00.. run tag @s add FindFlag11.0
    execute if score $CloneFlagIndex counter matches ..-1 run tag @s add FindFlag11.1
    scoreboard players operation $CloneFlagIndex counter *= #2 constant
    execute if score $CloneFlagIndex counter matches 00.. run tag @s add FindFlag12.0
    execute if score $CloneFlagIndex counter matches ..-1 run tag @s add FindFlag12.1
    scoreboard players operation $CloneFlagIndex counter *= #2 constant
    execute if score $CloneFlagIndex counter matches 00.. run tag @s add FindFlag13.0
    execute if score $CloneFlagIndex counter matches ..-1 run tag @s add FindFlag13.1
    scoreboard players operation $CloneFlagIndex counter *= #2 constant
    execute if score $CloneFlagIndex counter matches 00.. run tag @s add FindFlag14.0
    execute if score $CloneFlagIndex counter matches ..-1 run tag @s add FindFlag14.1
    scoreboard players operation $CloneFlagIndex counter *= #2 constant
    execute if score $CloneFlagIndex counter matches 00.. run tag @s add FindFlag15.0
    execute if score $CloneFlagIndex counter matches ..-1 run tag @s add FindFlag15.1
    scoreboard players reset $CloneFlagIndex counter
    tag @s add flaged