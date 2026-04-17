# インクリメント
scoreboard players add $Loop yrh.011.global 1

# パーティクル
particle white_smoke ~ ~ ~ 0.125 0.125 0.125 0.0 1 normal @a

# ダメージ
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[dx=-0.5,dy=-0.5,dz=-0.5,tag=!yrh.011.shoot.attacker] run damage @s 6.0 player_attack by @p[tag=yrh.011.shoot.attacker]

# 停止条件
execute unless block ~ ~ ~ air run return run particle smoke ~ ~ ~ 0.0 0.0 0.0 1.0 1 normal @a
execute if score $Loop yrh.011.global matches 60.. run return run particle smoke ~ ~ ~ 0.0 0.0 0.0 1.0 1 normal @a

# ループ
execute positioned ^ ^ ^0.5 run function yrh.011:items/tristeamowl/shoot/normal