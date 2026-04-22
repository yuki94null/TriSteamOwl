# データいったん移す
    data modify storage yrh.011:global Item set from entity @s SelectedItem

# マガジンがマックスなら無理
    # スコアに代入
        execute store result score $MagazineSize yrh.011.global run data get storage yrh.011:global magazineSize
        execute store result score $Magazine yrh.011.global run data get storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.magazine

    # 無理
        execute if score $Magazine yrh.011.global >= $MagazineSize yrh.011.global run return run function yrh.011:items/tristeamowl/reload/fail_max

# 音
    playsound entity.experience_orb.pickup player @a ~ ~ ~ 1.0 1.0 0.0

# データをセット
    data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".reload set from storage yrh.011:global reloadTime

# アイテムデータいじるようのアイテム出す
    summon item ~ ~-100000 ~ {Tags:[yrh.011.reload.Tmp],Item:{id:"stone"}}

# データセット
    data modify entity @n[tag=yrh.011.reload.Tmp] Item set from storage yrh.011:global Item

# 置き換え
    item replace entity @s weapon.mainhand from entity @n[tag=yrh.011.reload.Tmp] container.0

# アイテム消す
    kill @n[tag=yrh.011.reload.Tmp]

# リロード中タグ
    tag @s add yrh.011.reload.while