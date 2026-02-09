# Check mainhand and offhand for items in the tags that don't have the correct stack size

# --- Stack 64 ---
# If item is in stack_to_64 tag AND does NOT have max_stack_size=64 component, fix it.
execute if items entity @s weapon.mainhand #shirakomano:stack_to_64 unless items entity @s weapon.mainhand *[minecraft:max_stack_size=64] run item modify entity @s weapon.mainhand shirakomano:set_stack_64
execute if items entity @s weapon.offhand #shirakomano:stack_to_64 unless items entity @s weapon.offhand *[minecraft:max_stack_size=64] run item modify entity @s weapon.offhand shirakomano:set_stack_64

# --- Stack 99 ---
# If item is in stack_to_99 tag AND does NOT have max_stack_size=99 component, fix it.
execute if items entity @s weapon.mainhand #shirakomano:stack_to_99 unless items entity @s weapon.mainhand *[minecraft:max_stack_size=99] run item modify entity @s weapon.mainhand shirakomano:set_stack_99
execute if items entity @s weapon.offhand #shirakomano:stack_to_99 unless items entity @s weapon.offhand *[minecraft:max_stack_size=99] run item modify entity @s weapon.offhand shirakomano:set_stack_99
