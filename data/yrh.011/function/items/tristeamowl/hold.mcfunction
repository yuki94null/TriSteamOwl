# データいったん移す
    data modify storage yrh.011:global Item set from entity @s SelectedItem

# 残弾がなければやめる
    execute if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets{magazine:0} if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber{main:false,left:false,right:false} run return run say 弾がない

# "yrh.011": {
# "item": "tristeamowl",
# "burst": {
# "time": 3
# },
# "bullets":{
# "currentShoot": "none",
# "magazine": 0,
# "chamber": {
# "main": false,
# "left": false,
# "right": false
# }
# }
# }

# アイテムデータいじるようのアイテム出す
    summon item ~ ~-100000 ~ {Tags:[yrh.011.shoot.Tmp],Item:{id:"stone"}}


# デクリメント と スコア代入
    execute store result score $burstTime yrh.011.global store result storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".burst.time int 0.9999 run data get storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".burst.time 1.0

# 撃つ
    execute if score $burstTime yrh.011.global matches ..1 run function yrh.011:items/tristeamowl/shoot

# データセット
    data modify entity @n[tag=yrh.011.shoot.Tmp] Item set from storage yrh.011:global Item

# 置き換え
    item replace entity @s weapon.mainhand from entity @n[tag=yrh.011.shoot.Tmp] container.0

# アイテム消す
    kill @n[tag=yrh.011.shoot.Tmp]
