# 初期化
    data modify storage yrh.011:global Info set value \
    {\
    LavMax:0,LavCurrent:0,\
    Lav0:":",Lav5:":",Lav10:":",Lav15:":",Lav20:":",Lav25:":",Lav30:":",Lav35:":",Lav40:":",Lav45:":",Lav50:":",Lav55:":",Lav60:":",Lav65:":",Lav70:":",Lav75:":",Lav80:":",Lav85:":",Lav90:":",Lav95:":",Lav100:":",\
    MagMax:0,MagCarrent:0,\
    Mag0:":",Mag5:":",Mag10:":",Mag15:":",Mag20:":",Mag25:":",Mag30:":",Mag35:":",Mag40:":",Mag45:":",Mag50:":",Mag55:":",Mag60:":",Mag65:":",Mag70:":",Mag75:":",Mag80:":",Mag85:":",Mag90:":",Mag95:":",Mag100:":"\
    }


# データいったん移す
    data modify storage yrh.011:global Item set from entity @s SelectedItem

# 最大値とる
    execute store result storage yrh.011:global Info.MagMax int 1.0 store result score $MagazineSize yrh.011.global run data get storage yrh.011:global magazineSize
    execute store result storage yrh.011:global Info.LavMax int 1.0 store result score $LavaLimit yrh.011.global run data get storage yrh.011:global lavaLimit

# 現在値とる
    execute store result storage yrh.011:global Info.MagCurrent int 0.01 store result score $Magazine yrh.011.global run data get storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.magazine 100
    execute store result storage yrh.011:global Info.LavCurrent int 0.01 store result score $Lava yrh.011.global run data get storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.lava 100

# 割合にする
    scoreboard players operation $Magazine yrh.011.global /= $MagazineSize yrh.011.global
    scoreboard players operation $Lava yrh.011.global /= $LavaLimit yrh.011.global

    execute if score $Magazine yrh.011.global matches 1.. run data modify storage yrh.011:global Info.Mag0 set value "|"
    execute if score $Magazine yrh.011.global matches 6.. run data modify storage yrh.011:global Info.Mag5 set value "|"
    execute if score $Magazine yrh.011.global matches 11.. run data modify storage yrh.011:global Info.Mag10 set value "|"
    execute if score $Magazine yrh.011.global matches 16.. run data modify storage yrh.011:global Info.Mag15 set value "|"
    execute if score $Magazine yrh.011.global matches 21.. run data modify storage yrh.011:global Info.Mag20 set value "|"
    execute if score $Magazine yrh.011.global matches 26.. run data modify storage yrh.011:global Info.Mag25 set value "|"
    execute if score $Magazine yrh.011.global matches 31.. run data modify storage yrh.011:global Info.Mag30 set value "|"
    execute if score $Magazine yrh.011.global matches 36.. run data modify storage yrh.011:global Info.Mag35 set value "|"
    execute if score $Magazine yrh.011.global matches 41.. run data modify storage yrh.011:global Info.Mag40 set value "|"
    execute if score $Magazine yrh.011.global matches 46.. run data modify storage yrh.011:global Info.Mag45 set value "|"
    execute if score $Magazine yrh.011.global matches 51.. run data modify storage yrh.011:global Info.Mag50 set value "|"
    execute if score $Magazine yrh.011.global matches 56.. run data modify storage yrh.011:global Info.Mag55 set value "|"
    execute if score $Magazine yrh.011.global matches 61.. run data modify storage yrh.011:global Info.Mag60 set value "|"
    execute if score $Magazine yrh.011.global matches 66.. run data modify storage yrh.011:global Info.Mag65 set value "|"
    execute if score $Magazine yrh.011.global matches 71.. run data modify storage yrh.011:global Info.Mag70 set value "|"
    execute if score $Magazine yrh.011.global matches 76.. run data modify storage yrh.011:global Info.Mag75 set value "|"
    execute if score $Magazine yrh.011.global matches 81.. run data modify storage yrh.011:global Info.Mag80 set value "|"
    execute if score $Magazine yrh.011.global matches 86.. run data modify storage yrh.011:global Info.Mag85 set value "|"
    execute if score $Magazine yrh.011.global matches 91.. run data modify storage yrh.011:global Info.Mag90 set value "|"
    execute if score $Magazine yrh.011.global matches 96.. run data modify storage yrh.011:global Info.Mag95 set value "|"
    execute if score $Magazine yrh.011.global matches 100.. run data modify storage yrh.011:global Info.Mag100 set value "|"

    execute if score $Lava yrh.011.global matches 1.. run data modify storage yrh.011:global Info.Lav0 set value "|"
    execute if score $Lava yrh.011.global matches 6.. run data modify storage yrh.011:global Info.Lav5 set value "|"
    execute if score $Lava yrh.011.global matches 11.. run data modify storage yrh.011:global Info.Lav10 set value "|"
    execute if score $Lava yrh.011.global matches 16.. run data modify storage yrh.011:global Info.Lav15 set value "|"
    execute if score $Lava yrh.011.global matches 21.. run data modify storage yrh.011:global Info.Lav20 set value "|"
    execute if score $Lava yrh.011.global matches 26.. run data modify storage yrh.011:global Info.Lav25 set value "|"
    execute if score $Lava yrh.011.global matches 31.. run data modify storage yrh.011:global Info.Lav30 set value "|"
    execute if score $Lava yrh.011.global matches 36.. run data modify storage yrh.011:global Info.Lav35 set value "|"
    execute if score $Lava yrh.011.global matches 41.. run data modify storage yrh.011:global Info.Lav40 set value "|"
    execute if score $Lava yrh.011.global matches 46.. run data modify storage yrh.011:global Info.Lav45 set value "|"
    execute if score $Lava yrh.011.global matches 51.. run data modify storage yrh.011:global Info.Lav50 set value "|"
    execute if score $Lava yrh.011.global matches 56.. run data modify storage yrh.011:global Info.Lav55 set value "|"
    execute if score $Lava yrh.011.global matches 61.. run data modify storage yrh.011:global Info.Lav60 set value "|"
    execute if score $Lava yrh.011.global matches 66.. run data modify storage yrh.011:global Info.Lav65 set value "|"
    execute if score $Lava yrh.011.global matches 71.. run data modify storage yrh.011:global Info.Lav70 set value "|"
    execute if score $Lava yrh.011.global matches 76.. run data modify storage yrh.011:global Info.Lav75 set value "|"
    execute if score $Lava yrh.011.global matches 81.. run data modify storage yrh.011:global Info.Lav80 set value "|"
    execute if score $Lava yrh.011.global matches 86.. run data modify storage yrh.011:global Info.Lav85 set value "|"
    execute if score $Lava yrh.011.global matches 91.. run data modify storage yrh.011:global Info.Lav90 set value "|"
    execute if score $Lava yrh.011.global matches 96.. run data modify storage yrh.011:global Info.Lav95 set value "|"
    execute if score $Lava yrh.011.global matches 100.. run data modify storage yrh.011:global Info.Lav100 set value "|"


# 表示
    function yrh.011:items/tristeamowl/ui/mcr_info with storage yrh.011:global Info