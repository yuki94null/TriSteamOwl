# リロードする数：storage yrh.011:reload count int
# リロード対象：メインハンド
# リロードしてもともと入ってた弾数：storage yrh.011:reload exist int

# データいったん移す
    data modify storage yrh.011:global Item set from entity @s SelectedItem

# データいったん移す
    data modify storage yrh.011:reload exist set from storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.magazine

# マガジンの中身を合わせる
    data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.magazine set from storage yrh.011:reload count


# アイテムデータいじるようのアイテム出す
    summon item ~ ~-100000 ~ {Tags:[yrh.011.reload.Tmp],Item:{id:"stone"}}

# データセット
    data modify entity @n[tag=yrh.011.reload.Tmp] Item set from storage yrh.011:global Item

# 置き換え
    item replace entity @s weapon.mainhand from entity @n[tag=yrh.011.reload.Tmp] container.0

# アイテム消す
    kill @n[tag=yrh.011.reload.Tmp]