# Macro function to fix a specific slot
# Input: {type: "container|enderchest", slot: <number>}

$execute if items entity @s $(type).$(slot) #shirakomano:stack_to_64 unless items entity @s $(type).$(slot) *[minecraft:max_stack_size=64] run item modify entity @s $(type).$(slot) shirakomano:set_stack_64
$execute if items entity @s $(type).$(slot) #shirakomano:stack_to_99 unless items entity @s $(type).$(slot) *[minecraft:max_stack_size=99] run item modify entity @s $(type).$(slot) shirakomano:set_stack_99
