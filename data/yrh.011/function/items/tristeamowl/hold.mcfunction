# データいったん移す
    data modify storage yrh.011:global Item set from entity @s SelectedItem

# デクリメント と スコア代入
    execute store result score $burstTime yrh.011.global store result storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".burst.time int 0.9999 run \
        data get storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".burst.time 1.0

# 撃つ
    tag @s add yrh.011.shoot.attacker
    execute if score $burstTime yrh.011.global matches ..1 run function yrh.011:items/tristeamowl/shoot
    tag @s remove yrh.011.shoot.attacker

# アイテムデータいじるようのアイテム出す
    summon item ~ ~-100000 ~ {Tags:[yrh.011.shoot.Tmp],Item:{id:"stone"}}

# データセット
    data modify entity @n[tag=yrh.011.shoot.Tmp] Item set from storage yrh.011:global Item

# 置き換え
    item replace entity @s weapon.mainhand from entity @n[tag=yrh.011.shoot.Tmp] container.0

# アイテム消す
    kill @n[tag=yrh.011.shoot.Tmp]