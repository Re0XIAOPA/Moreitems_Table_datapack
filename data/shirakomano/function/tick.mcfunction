# Fix dropped items
execute as @e[type=minecraft:item,tag=!shirakomano.fixed] run function shirakomano:fix_item

# Fix player held items (Mainhand and Offhand)
execute as @a run function shirakomano:fix_player
