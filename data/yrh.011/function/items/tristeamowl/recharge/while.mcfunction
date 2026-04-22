# 溶岩バケツの数を取得
    execute store result score $LavaCount yrh.011.global run clear @s lava_bucket 0

# 条件
#  持ってないとき
    execute if score $LavaCount yrh.011.global matches 0 run return run function yrh.011:items/tristeamowl/recharge/fail_while
#  スニークしてないとき
    execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:false}}}} run return run function yrh.011:items/tristeamowl/recharge/fail_while
#  武器持ってないとき
    execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{yrh.011:{item:"tristeamowl"}}] run return run function yrh.011:items/tristeamowl/recharge/fail_while

# データいったん移す
    data modify storage yrh.011:global Item set from entity @s SelectedItem

# デクリメント
    execute store result storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".recharge int 0.999999 run data get storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".recharge 1.0

# タイトル
    # データを初期化するよ
        data modify storage yrh.011:global Progress set value {text:"Recharge",Space:"00",Percent:0,0:"|",5:":",10:":",15:":",20:":",25:":",30:":",35:":",40:":",45:":",50:":",55:":",60:":",65:":",70:":",75:":",80:":",85:":",90:":",95:":",100:":"}

    # パーセント化
        execute store result score $CurrentRechargeTime yrh.011.global run data get storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".recharge 100
        execute store result score $RechargeTime yrh.011.global run data get storage yrh.011:global rechargeTime 1
        
        scoreboard players operation $CurrentRechargeTime yrh.011.global /= $RechargeTime yrh.011.global

    # データを作るよ

        execute if score $CurrentRechargeTime yrh.011.global matches ..95 run data modify storage yrh.011:global Progress.5 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..90 run data modify storage yrh.011:global Progress.10 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..85 run data modify storage yrh.011:global Progress.15 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..80 run data modify storage yrh.011:global Progress.20 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..75 run data modify storage yrh.011:global Progress.25 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..70 run data modify storage yrh.011:global Progress.30 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..65 run data modify storage yrh.011:global Progress.35 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..60 run data modify storage yrh.011:global Progress.40 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..55 run data modify storage yrh.011:global Progress.45 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..50 run data modify storage yrh.011:global Progress.50 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..45 run data modify storage yrh.011:global Progress.55 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..40 run data modify storage yrh.011:global Progress.60 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..35 run data modify storage yrh.011:global Progress.65 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..30 run data modify storage yrh.011:global Progress.70 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..25 run data modify storage yrh.011:global Progress.75 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..20 run data modify storage yrh.011:global Progress.80 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..15 run data modify storage yrh.011:global Progress.85 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..10 run data modify storage yrh.011:global Progress.90 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..5 run data modify storage yrh.011:global Progress.95 set value "|"
        execute if score $CurrentRechargeTime yrh.011.global matches ..0 run data modify storage yrh.011:global Progress.100 set value "|"
    # 
        execute store result storage yrh.011:global Progress.Percent int -1.0 run scoreboard players remove $CurrentRechargeTime yrh.011.global 100

        execute if score $CurrentRechargeTime yrh.011.global matches ..-10 run data modify storage yrh.011:global Progress.Space set value "0"
        execute if score $CurrentRechargeTime yrh.011.global matches ..-100 run data modify storage yrh.011:global Progress.Space set value ""

    # マクロで表示
        function yrh.011:mcr_progress with storage yrh.011:global Progress

# 0になったらfinishへ
    execute if data storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011"{recharge:0} run function yrh.011:items/tristeamowl/recharge/finish

# アイテムデータいじるようのアイテム出す
    summon item ~ ~-100000 ~ {Tags:[yrh.011.recharge.Tmp],Item:{id:"stone"}}

# データセット
    data modify entity @n[tag=yrh.011.recharge.Tmp] Item set from storage yrh.011:global Item

# 置き換え
    item replace entity @s weapon.mainhand from entity @n[tag=yrh.011.recharge.Tmp] container.0

# アイテム消す
    kill @n[tag=yrh.011.recharge.Tmp]