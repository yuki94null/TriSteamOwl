# データいったん移す
    data modify storage yrh.011:global Item set from entity @s SelectedItem

# lavaの値でやめさせる
    # スコアに代入
        execute store result score $Lava yrh.011.global run data get storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.lava
        execute store result score $LavaLimit yrh.011.global run data get storage yrh.011:global lavaLimit

    # やめさせるところ
        execute if score $Lava yrh.011.global >= $LavaLimit yrh.011.global run return run function yrh.011:items/tristeamowl/recharge/fail_max

# 溶岩バケツ持ってなければ無理
    # 溶岩バケツの数を取得
        execute store result score $LavaCount yrh.011.global run clear @s lava_bucket 0
    # 無理
        execute if score $LavaCount yrh.011.global matches 0 run return run function yrh.011:items/tristeamowl/recharge/fail_noitem

# 音
    playsound entity.experience_orb.pickup player @a ~ ~ ~ 1.0 1.0 0.0

# データをセット
    data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".recharge set from storage yrh.011:global rechargeTime

# アイテムデータいじるようのアイテム出す
    summon item ~ ~-100000 ~ {Tags:[yrh.011.recharge.Tmp],Item:{id:"stone"}}

# データセット
    data modify entity @n[tag=yrh.011.recharge.Tmp] Item set from storage yrh.011:global Item

# 置き換え
    item replace entity @s weapon.mainhand from entity @n[tag=yrh.011.recharge.Tmp] container.0

# アイテム消す
    kill @n[tag=yrh.011.recharge.Tmp]

# リチャージ中タグ
    tag @s add yrh.011.recharge.while
