# 条件
    execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run return run tag @s remove yrh.011.reload.while
    execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{yrh.011:{item:"tristeamowl"}}] run return run tag @s remove yrh.011.reload.while


# データいったん移す
    data modify storage yrh.011:global Item set from entity @s SelectedItem

# デクリメント
    execute store result storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".reload int 0.999999 run data get storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".reload 1.0

# 0になったらfinishへ
    execute if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011"{reload:0} run function yrh.011:items/tristeamowl/reload/finish

# アイテムデータいじるようのアイテム出す
    summon item ~ ~-100000 ~ {Tags:[yrh.011.reload.Tmp],Item:{id:"stone"}}

# データセット
    data modify entity @n[tag=yrh.011.reload.Tmp] Item set from storage yrh.011:global Item

# 置き換え
    item replace entity @s weapon.mainhand from entity @n[tag=yrh.011.reload.Tmp] container.0

# アイテム消す
    kill @n[tag=yrh.011.reload.Tmp]