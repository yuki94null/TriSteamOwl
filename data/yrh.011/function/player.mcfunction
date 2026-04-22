# 一応
    advancement revoke @s only yrh.011:rightclick
# それぞれ中
    execute if entity @s[tag=yrh.011.reload.while] run function yrh.011:items/tristeamowl/reload/while
    execute if entity @s[tag=yrh.011.recharge.while] run function yrh.011:items/tristeamowl/recharge/while

# ui出す
    execute if items entity @s[tag=!yrh.011.reload.while,tag=!yrh.011.recharge.while] weapon.mainhand *[minecraft:custom_data~{yrh.011:{item:"tristeamowl"}}] run function yrh.011:items/tristeamowl/ui/info