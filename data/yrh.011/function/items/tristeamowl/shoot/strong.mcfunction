# インクリメント
    scoreboard players add $Loop yrh.011.global 1

# 演出
    # パーティクル
        particle white_smoke ~ ~ ~ 0.0625 0.0625 0.0625 0.0 1 normal @a
        particle flame ~ ~ ~ 0.0625 0.0625 0.0625 0.0 1 normal @a

    # 音
        playsound block.fire.extinguish player @a ~ ~ ~ 0.125 2.0
        playsound item.firecharge.use player @a ~ ~ ~ 0.25 1.5

# ダメージ
    execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[dx=0.125,dy=0.125,dz=0.125,tag=!yrh.011.shoot.attacker] if data entity @s Brain run damage @s 3.0 yrh.011:strong_shot by @p[tag=yrh.011.shoot.attacker]

# 停止条件
    execute unless block ~ ~ ~ air run return run particle smoke ~ ~ ~ 0.0 0.0 0.0 1.0 1 normal @a
    execute if score $Loop yrh.011.global matches 30.. run return run particle smoke ~ ~ ~ 0.0 0.0 0.0 1.0 1 normal @a

# ループ
    execute positioned ^ ^ ^1.0 run function yrh.011:items/tristeamowl/shoot/strong