say reload

# データいったん移す
    data modify storage yrh.011:global Item set from entity @s SelectedItem

# リロードする数を合わせる
    data modify storage yrh.011:reload count set from storage yrh.011:global magazineSize


# チャンバーに応じてデクリメント
#  初期化
        data remove storage yrh.011:reload chamber

    execute unless data storage yrh.011:reload {count:0} if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber{left:false} run data modify storage yrh.011:reload chamber.left set value true
    execute unless data storage yrh.011:reload {count:0} if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber{left:false} store result storage yrh.011:reload count int 0.99999999999 run data get storage yrh.011:reload count 1.0

    execute unless data storage yrh.011:reload {count:0} if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber{right:false} run data modify storage yrh.011:reload chamber.right set value true
    execute unless data storage yrh.011:reload {count:0} if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber{right:false} store result storage yrh.011:reload count int 0.99999999999 run data get storage yrh.011:reload count 1.0

    execute unless data storage yrh.011:reload {count:0} if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber{main:false} run data modify storage yrh.011:reload chamber.main set value true
    execute unless data storage yrh.011:reload {count:0} if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber{main:false} store result storage yrh.011:reload count int 0.99999999999 run data get storage yrh.011:reload count 1.0

# チャンバーセット
    execute if data storage yrh.011:reload chamber{left:true} run data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber.left set value true
    execute if data storage yrh.011:reload chamber{right:true} run data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber.right set value true
    execute if data storage yrh.011:reload chamber{main:true} run data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber.main set value true

# マガジンの中身を合わせる
    data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.magazine set from storage yrh.011:reload count

# 履歴をリセット
    data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.currentShoot set value "none"


# リロードで変わったデータを活用して時間など設定
    execute if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber{left:true} run data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".burst.time set from storage yrh.011:global burstTime
    execute if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber{right:true} run data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".burst.time set from storage yrh.011:global burstTime
    execute if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber{left:false} \
            if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber{right:false} \
            if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber{main:true} run data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".burst.time set from storage yrh.011:global burstTime



# アイテムデータいじるようのアイテム出す
    summon item ~ ~-100000 ~ {Tags:[yrh.011.reload.Tmp],Item:{id:"stone"}}

# データセット
    data modify entity @n[tag=yrh.011.reload.Tmp] Item set from storage yrh.011:global Item

# 置き換え
    item replace entity @s weapon.mainhand from entity @n[tag=yrh.011.reload.Tmp] container.0

# アイテム消す
    kill @n[tag=yrh.011.reload.Tmp]


###
