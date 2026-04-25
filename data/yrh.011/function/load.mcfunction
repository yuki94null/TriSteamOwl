# ロードしたとき
    tellraw @a [{text:"TriSteamOwl Successfully Installed"}]

# score
    scoreboard objectives add yrh.011.global dummy
    scoreboard players set #16 yrh.011.global 16

# data
    execute unless data storage yrh.011:global burstTime run data merge storage yrh.011:global {burstTime:2}
    execute unless data storage yrh.011:global burstInterval run data merge storage yrh.011:global {burstInterval:6}
    execute unless data storage yrh.011:global magazineSize run data merge storage yrh.011:global {magazineSize:15}
    
    execute unless data storage yrh.011:global reloadTime run data merge storage yrh.011:global {reloadTime:20}
    execute unless data storage yrh.011:global rechargeTime run data merge storage yrh.011:global {rechargeTime:40}

    execute unless data storage yrh.011:global lavaLimit run data merge storage yrh.011:global {lavaLimit:400}
    execute unless data storage yrh.011:global lavaUnit run data merge storage yrh.011:global {lavaUnit:100}