# もう一度使えるように
    advancement revoke @s only yrh.011:rightclick
# 遷移
    execute if items entity @s[tag=!yrh.011.reload.while,tag=!yrh.011.recharge.while] weapon.mainhand *[minecraft:custom_data~{yrh.011:{item:"tristeamowl"}}] run return run function yrh.011:items/tristeamowl/hold