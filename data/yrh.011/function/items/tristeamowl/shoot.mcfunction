say shoot
playsound ui.button.click

execute store result score $burstCount yrh.011.global store result storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.magazine int 0.9999 run data get storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.magazine 1.0

data modify storage yrh.011:global chamber set from storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.chamber
data modify storage yrh.011:global magazine set from storage yrh.011:global Item.components."minecraft:custom_data"."yrh.011".bullets.magazine

execute if data storage yrh.011:global chamber{left:true} run return run function yrh.011:items/tristeamowl/chamber/left
execute if data storage yrh.011:global chamber{right:true} run return run function yrh.011:items/tristeamowl/chamber/right
execute if data storage yrh.011:global chamber{main:true} run return run function yrh.011:items/tristeamowl/chamber/main