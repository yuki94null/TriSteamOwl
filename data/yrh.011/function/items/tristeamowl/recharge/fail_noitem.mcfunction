# タグ
    tag @s remove yrh.011.reload.finish
    tag @s remove yrh.011.recharge.max
    tag @s remove yrh.011.reload.max
    tag @s remove yrh.011.recharge.fail
    tag @s remove yrh.011.reload.fail
    tag @s remove yrh.011.recharge.finish
    tag @s add yrh.011.fail.noitem
# リセット
    scoreboard players reset @s yrh.011.global
# 演出
    function yrh.011:items/tristeamowl/ui/finish
# 音
    playsound block.note_block.bass player @s ~ ~ ~ 1.0 0.8 0.0