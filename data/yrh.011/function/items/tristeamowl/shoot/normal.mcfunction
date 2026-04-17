# インクリメント
    scoreboard players add $Loop yrh.011.global 1

# 演出
#  パーティクル
    particle white_smoke ~ ~ ~ 0.0625 0.0625 0.0625 0.01 1 normal @a
    particle smoke ~ ~ ~ 0.0625 0.0625 0.0625 0.05 1 normal @a

#  音
    playsound block.fire.extinguish player @a ~ ~ ~ 0.125 2.0
    playsound item.firecharge.use player @a ~ ~ ~ 0.25 2.0

# ダメージ
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=-1.0,dy=-1.0,dz=-1.0,tag=!yrh.011.shoot.attacker] if data entity @s Brain run damage @s 6.0 player_attack by @p[tag=yrh.011.shoot.attacker]

# 停止条件
    execute unless block ~ ~ ~ air run return run particle smoke ~ ~ ~ 0.0 0.0 0.0 1.0 1 normal @a
    execute if score $Loop yrh.011.global matches 30.. run return run particle smoke ~ ~ ~ 0.0 0.0 0.0 1.0 1 normal @a

# ループ
    execute positioned ^ ^ ^1.0 run function yrh.011:items/tristeamowl/shoot/normal