# Check if the dropped item is in our target list
# If it is, apply the stack size modifier

# Stack 64
execute if items entity @s contents #shirakomano:stack_to_64 run item modify entity @s contents shirakomano:set_stack_64

# Stack 99
execute if items entity @s contents #shirakomano:stack_to_99 run item modify entity @s contents shirakomano:set_stack_99

# Mark the item as fixed so it isn't processed again
tag @s add shirakomano.fixed