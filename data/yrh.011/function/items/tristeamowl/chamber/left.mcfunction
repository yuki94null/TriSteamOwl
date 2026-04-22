# どこから撃ったか
    data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.currentShoot set value "left"

# 次の射撃間隔
    data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".burst.time set from storage yrh.011:global burstTime

# らばないよ
    execute if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets{lava:0} run return run playsound block.fire.extinguish player @a ~ ~ ~ 1.0 2.0

# それはそうとチャンバーに弾がなければリターン
    execute if data storage yrh.011:global chamber{left:false} run return run playsound ui.button.click player @a ~ ~ ~ 1.0 1.2

# 射撃
    execute anchored eyes positioned ^0.35 ^-0.35 ^ run function yrh.011:items/tristeamowl/shoot/normal

# 撃ったので次弾薬室にロードしたい
    # がマガジンに残ってなければ チャンバーを空にしてリターン
        execute if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets{magazine:0} run return run data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber.left set value false

# マガジンにあるので弾を減らす
    execute store result storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.magazine int 0.9999 run data get storage yrh.011:global magazine 1.0
# マガジンにあるので弾を減らす
    execute store result storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.lava int 0.9999 run data get storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.lava 1.0