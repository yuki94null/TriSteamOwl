say shoot
tag @s add yrh.011.shoot.attacker

# 初期化
scoreboard players reset $Loop yrh.011.global

# パス書くのがだるいので個別に入れる
data modify storage yrh.011:global currentShoot set from storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.currentShoot
data modify storage yrh.011:global chamber set from storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber
data modify storage yrh.011:global magazine set from storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.magazine

# 状態に応じて射撃するかはんてい
execute if data storage yrh.011:global {currentShoot:"none"} run return run function yrh.011:items/tristeamowl/chamber/left
execute if data storage yrh.011:global {currentShoot:"main"} run return run function yrh.011:items/tristeamowl/chamber/left
execute if data storage yrh.011:global {currentShoot:"left"} run return run function yrh.011:items/tristeamowl/chamber/right
execute if data storage yrh.011:global {currentShoot:"right"} run return run function yrh.011:items/tristeamowl/chamber/main

tag @s remove yrh.011.shoot.attacker
