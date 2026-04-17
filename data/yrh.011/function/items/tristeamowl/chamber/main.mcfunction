say main

# どこから撃ったか
    data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.currentShoot set value "main"

# 次の時間
    data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".burst.time set from storage yrh.011:global burstInterval

execute if data storage yrh.011:global chamber{main:false} run return fail

playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 1.0 1.0

#　射撃
execute anchored eyes positioned ^ ^ ^ run function yrh.011:items/tristeamowl/shoot/strong

# 撃ったので次弾薬室にロードしたい
#  がマガジンに残ってなければ チャンバーを空にしてリターン
execute if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets{magazine:0} run return run data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber.main set value false

# マガジンにあるので弾を減らす
    execute store result score $Magazine yrh.011.global store result storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.magazine int 0.9999 run data get storage yrh.011:global magazine 1.0