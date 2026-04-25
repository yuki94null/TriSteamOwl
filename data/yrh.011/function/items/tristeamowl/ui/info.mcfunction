# 初期化
    data modify storage yrh.011:global Info merge value \
    {\
    LavMax:0,LavCurrent:0,\
    Lav:"",\
    MagMax:0,MagCarrent:0,\
    Mag:""\
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

    scoreboard players operation $Magazine yrh.011.global *= #16 yrh.011.global
    scoreboard players operation $Lava yrh.011.global *= #16 yrh.011.global

    execute if score $Magazine yrh.011.global matches 0.. run data modify storage yrh.011:global Info.Mag set value ""
    execute if score $Magazine yrh.011.global matches 100.. run data modify storage yrh.011:global Info.Mag set value ""
    execute if score $Magazine yrh.011.global matches 200.. run data modify storage yrh.011:global Info.Mag set value ""
    execute if score $Magazine yrh.011.global matches 300.. run data modify storage yrh.011:global Info.Mag set value ""
    execute if score $Magazine yrh.011.global matches 400.. run data modify storage yrh.011:global Info.Mag set value ""
    execute if score $Magazine yrh.011.global matches 500.. run data modify storage yrh.011:global Info.Mag set value ""
    execute if score $Magazine yrh.011.global matches 600.. run data modify storage yrh.011:global Info.Mag set value ""
    execute if score $Magazine yrh.011.global matches 700.. run data modify storage yrh.011:global Info.Mag set value ""
    execute if score $Magazine yrh.011.global matches 800.. run data modify storage yrh.011:global Info.Mag set value ""
    execute if score $Magazine yrh.011.global matches 900.. run data modify storage yrh.011:global Info.Mag set value ""
    execute if score $Magazine yrh.011.global matches 1000.. run data modify storage yrh.011:global Info.Mag set value ""
    execute if score $Magazine yrh.011.global matches 1100.. run data modify storage yrh.011:global Info.Mag set value ""
    execute if score $Magazine yrh.011.global matches 1200.. run data modify storage yrh.011:global Info.Mag set value ""
    execute if score $Magazine yrh.011.global matches 1300.. run data modify storage yrh.011:global Info.Mag set value ""
    execute if score $Magazine yrh.011.global matches 1400.. run data modify storage yrh.011:global Info.Mag set value ""
    execute if score $Magazine yrh.011.global matches 1500.. run data modify storage yrh.011:global Info.Mag set value ""
    execute if score $Magazine yrh.011.global matches 1600.. run data modify storage yrh.011:global Info.Mag set value ""

    execute if score $Lava yrh.011.global matches 0.. run data modify storage yrh.011:global Info.Lav set value ""
    execute if score $Lava yrh.011.global matches 100.. run data modify storage yrh.011:global Info.Lav set value ""
    execute if score $Lava yrh.011.global matches 200.. run data modify storage yrh.011:global Info.Lav set value ""
    execute if score $Lava yrh.011.global matches 300.. run data modify storage yrh.011:global Info.Lav set value ""
    execute if score $Lava yrh.011.global matches 400.. run data modify storage yrh.011:global Info.Lav set value ""
    execute if score $Lava yrh.011.global matches 500.. run data modify storage yrh.011:global Info.Lav set value ""
    execute if score $Lava yrh.011.global matches 600.. run data modify storage yrh.011:global Info.Lav set value ""
    execute if score $Lava yrh.011.global matches 700.. run data modify storage yrh.011:global Info.Lav set value ""
    execute if score $Lava yrh.011.global matches 800.. run data modify storage yrh.011:global Info.Lav set value ""
    execute if score $Lava yrh.011.global matches 900.. run data modify storage yrh.011:global Info.Lav set value ""
    execute if score $Lava yrh.011.global matches 1000.. run data modify storage yrh.011:global Info.Lav set value ""
    execute if score $Lava yrh.011.global matches 1100.. run data modify storage yrh.011:global Info.Lav set value ""
    execute if score $Lava yrh.011.global matches 1200.. run data modify storage yrh.011:global Info.Lav set value ""
    execute if score $Lava yrh.011.global matches 1300.. run data modify storage yrh.011:global Info.Lav set value ""
    execute if score $Lava yrh.011.global matches 1400.. run data modify storage yrh.011:global Info.Lav set value ""
    execute if score $Lava yrh.011.global matches 1500.. run data modify storage yrh.011:global Info.Lav set value ""
    execute if score $Lava yrh.011.global matches 1600.. run data modify storage yrh.011:global Info.Lav set value ""


# 表示
    function yrh.011:items/tristeamowl/ui/mcr_info with storage yrh.011:global Info