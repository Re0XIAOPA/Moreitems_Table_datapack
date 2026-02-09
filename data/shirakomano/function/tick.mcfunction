# Fix dropped items
execute as @e[type=minecraft:item,tag=!shirakomano.fixed] run function shirakomano:fix_item

# Fix player held items (Mainhand and Offhand)
execute as @a run function shirakomano:fix_player

# Fix player inventory items (Hotbar + Backpack)
# This ensures items are fixed even if they are just sitting in the inventory
execute as @a run function shirakomano:fix_inventory

# Fix player enderchest items
execute as @a run function shirakomano:fix_enderchest
