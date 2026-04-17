say left

# 次の時間
    data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".burst.time set value 2

# 薬室にロード
    execute store result score $Magazine yrh.011.global store result storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.magazine int 0.9999 run data get storage yrh.011:global magazine 1.0

# 弾が残ってなければ送らない
    execute unless data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets{magazine:0} run data modify storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber.left set value false