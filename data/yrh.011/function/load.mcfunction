
tellraw @a [{text:"TriSteamOwl Successfully Installed"}]

# score
scoreboard objectives add yrh.011.deathcount deathCount
scoreboard objectives add yrh.011.global dummy

# data 
execute unless data storage yrh.011:global burstTime run data merge storage yrh.011:global {burstTime:2}
execute unless data storage yrh.011:global burstInterval run data merge storage yrh.011:global {burstInterval:5}
execute unless data storage yrh.011:global magazineSize run data merge storage yrh.011:global {magazineSize:24}