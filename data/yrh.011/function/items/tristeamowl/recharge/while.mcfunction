say recharging
# 溶岩バケツの数を取得
    execute store result score $LavaCount yrh.011.global run clear @s lava_bucket 0

# 条件
#  持ってないとき
    execute if score $LavaCount yrh.011.global matches 0 run return run tag @s remove yrh.011.recharge.while
#  スニークしてないとき
    execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:false}}}} run return run tag @s remove yrh.011.recharge.while
#  武器持ってないとき
    execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{yrh.011:{item:"tristeamowl"}}] run return run tag @s remove yrh.011.recharge.while

# データいったん移す
    data modify storage yrh.011:global Item set from entity @s SelectedItem

# デクリメント
    execute store result storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".recharge int 0.999999 run data get storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".recharge 1.0

# 0になったらfinishへ
    execute if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011"{recharge:0} run function yrh.011:items/tristeamowl/recharge/finish

# アイテムデータいじるようのアイテム出す
    summon item ~ ~-100000 ~ {Tags:[yrh.011.recharge.Tmp],Item:{id:"stone"}}

# データセット
    data modify entity @n[tag=yrh.011.recharge.Tmp] Item set from storage yrh.011:global Item

# 置き換え
    item replace entity @s weapon.mainhand from entity @n[tag=yrh.011.recharge.Tmp] container.0

# アイテム消す
    kill @n[tag=yrh.011.recharge.Tmp]