execute as @e[type=armor_stand] positioned ^ ^ ^5.0 \
    positioned ^10000 ^ ^ if entity @s[distance=..10000.5] \
    positioned ^-20000 ^ ^ if entity @s[distance=..10000.5] \
    positioned ^10000 ^10000 ^ if entity @s[distance=..10000.5] \
    positioned ^ ^-20000 ^ if entity @s[distance=..10000.5] \
    at @s anchored eyes positioned ^ ^ ^ run particle end_rod ~ ~ ~ 0.0 0.0 0.0 0.1 1