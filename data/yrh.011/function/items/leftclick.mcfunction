
# 遷移
#  リロード
    execute if items entity @s weapon.mainhand *[minecraft:custom_data~{yrh.011:{item:"tristeamowl"}}] \
        if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:false}}}} run return run function yrh.011:items/tristeamowl/reload/start
#  チャージ
    execute if items entity @s weapon.mainhand *[minecraft:custom_data~{yrh.011:{item:"tristeamowl"}}] \
        if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run return run function yrh.011:items/tristeamowl/recharge/start