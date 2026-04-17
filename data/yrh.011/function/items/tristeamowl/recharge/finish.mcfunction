say recharge finished
# マグマバケツをバケツに置き換え
    clear @s lava_bucket 1
    summon item ~ ~ ~ {Item:{id:"bucket",count:1}}

# スコアに代入
    execute store result score $Lava yrh.011.global run data get storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.lava
    execute store result score $LavaLimit yrh.011.global run data get storage yrh.011:global lavaLimit
    execute store result score $LavaUnit yrh.011.global run data get storage yrh.011:global lavaUnit

# 計算
    scoreboard players operation $Lava yrh.011.global += $LavaUnit yrh.011.global
    execute if score $Lava yrh.011.global > $LavaLimit yrh.011.global run scoreboard players operation $Lava yrh.011.global = $LavaLimit yrh.011.global

# チャージ
    execute store result storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.lava int 1.0 run scoreboard players get $Lava yrh.011.global

# タグ消す
    tag @s remove yrh.011.recharge.while