# リセットキャンセル
execute if score @s yrh.011.global matches 20.. run tag @s remove yrh.011.reload.finish
execute if score @s yrh.011.global matches 20.. run tag @s remove yrh.011.recharge.finish
execute if score @s yrh.011.global matches 20.. run tag @s remove yrh.011.recharge.max
execute if score @s yrh.011.global matches 20.. run tag @s remove yrh.011.reload.max
execute if score @s yrh.011.global matches 20.. run tag @s remove yrh.011.fail.noitem
execute if score @s yrh.011.global matches 20.. run tag @s remove yrh.011.recharge.fail
execute if score @s yrh.011.global matches 20.. run tag @s remove yrh.011.reload.fail
execute if score @s yrh.011.global matches 20.. run return run scoreboard players reset @s yrh.011.global

# タイマー
    scoreboard players add @s yrh.011.global 1

# タイトル #415
    execute if entity @s[tag=yrh.011.recharge.max] run data modify storage yrh.011:global Info.text set value \
    '{translate:"space.287"},{text:":[",color:gold},{text:"Full Lava Tank",color:red},{text:"]:",color:gold},{translate:"space.135"}'
    execute if entity @s[tag=yrh.011.reload.max] run data modify storage yrh.011:global Info.text set value \
    '{translate:"space.289"},{text:":[",color:gold},{text:"Full Magazine",color:red},{text:"]:",color:gold},{translate:"space.140"}'
    execute if entity @s[tag=yrh.011.fail.noitem] run data modify storage yrh.011:global Info.text set value \
    '{translate:"space.282"},{text:":[",color:gold},{text:"No Lava Bucket",color:red},{text:"]:",color:gold},{translate:"space.135"}'
    execute if entity @s[tag=yrh.011.recharge.fail] run data modify storage yrh.011:global Info.text set value \
    '{translate:"space.279"},{text:":[",color:gold},{text:"Recharge Failed",color:red},{text:"]:",color:gold},{translate:"space.135"}'
    execute if entity @s[tag=yrh.011.reload.fail] run data modify storage yrh.011:global Info.text set value \
    '{translate:"space.285"},{text:":[",color:gold},{text:"Reload Failed",color:red},{text:"]:",color:gold},{translate:"space.135"}'
    execute if entity @s[tag=yrh.011.reload.finish] run data modify storage yrh.011:global Info.text set value \
    '{translate:"space.280"},{text:":[",color:gold},{text:"Reload Complete",color:white},{text:"]:",color:gold},{translate:"space.135"}'
    execute if entity @s[tag=yrh.011.recharge.finish] run data modify storage yrh.011:global Info.text set value \
    '{translate:"space.265"},{text:":[",color:gold},{text:"Recharge Complete",color:white},{text:"]:",color:gold},{translate:"space.135"}'