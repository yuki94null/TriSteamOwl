# uiリセット
    function yrh.011:items/tristeamowl/ui/init
# 一応
    advancement revoke @s only yrh.011:rightclick
    recipe give @s yrh.011:tristeamowl

# リロード・リチャージ終了継続演出
    execute unless entity @s[tag=!yrh.011.reload.finish,tag=!yrh.011.recharge.finish,tag=!yrh.011.recharge.max,tag=!yrh.011.reload.max,tag=!yrh.011.fail.noitem,tag=!yrh.011.recharge.fail,tag=!yrh.011.reload.fail] run \
        function yrh.011:items/tristeamowl/ui/finish
# それぞれ中
    execute if entity @s[tag=yrh.011.reload.while] run function yrh.011:items/tristeamowl/reload/while
    execute if entity @s[tag=yrh.011.recharge.while] run function yrh.011:items/tristeamowl/recharge/while

# ui出す
    execute if items entity @s weapon.mainhand *[minecraft:custom_data~{yrh.011:{item:"tristeamowl"}}] run function yrh.011:items/tristeamowl/ui/info