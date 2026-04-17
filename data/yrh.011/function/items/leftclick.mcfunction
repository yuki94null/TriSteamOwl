execute if items entity @s weapon.mainhand *[minecraft:custom_data~{yrh.011:{item:"tristeamowl"}}] run return run function yrh.011:items/tristeamowl/reload

# マクロっていうのは、
# 任意の文字列をコマンドの中で使えるっていう機能です
# 任意の文字列の指定にデータの形式(エンティティやブロック、ストレージなど)を使うので、
# ストレージにスコアをstoreすると識別スコアの値をコマンドの中で使えます

# それで
# ```
# $tag @s add hit_$(id)
# ```
# みたいにすると