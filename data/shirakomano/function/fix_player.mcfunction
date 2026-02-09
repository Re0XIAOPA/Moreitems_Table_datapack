# Check mainhand and offhand for items in the tags that don't have the correct stack size

# --- Stack 64 ---
execute if items entity @s weapon.mainhand #shirakomano:stack_to_64[minecraft:max_stack_size=!64] run item modify entity @s weapon.mainhand shirakomano:set_stack_64
execute if items entity @s weapon.offhand #shirakomano:stack_to_64[minecraft:max_stack_size=!64] run item modify entity @s weapon.offhand shirakomano:set_stack_64

# --- Stack 99 ---
execute if items entity @s weapon.mainhand #shirakomano:stack_to_99[minecraft:max_stack_size=!99] run item modify entity @s weapon.mainhand shirakomano:set_stack_99
execute if items entity @s weapon.offhand #shirakomano:stack_to_99[minecraft:max_stack_size=!99] run item modify entity @s weapon.offhand shirakomano:set_stack_99