# 8.2
# What will the following program print to the screen?
# What will it return?

def execute(&block)
  block   #block.call would have worked here
end

p execute { puts "Hello from inside the execute method!" }

# print to screen: nothing is shown on screen
# reason: because the block is never activated with the `.call` method.

# returned: #<Proc:0x0000000000e69e98@/home/ec2-user/book_intro_to_ruby/ch_8_more_stuff/exercises/ch_8_ex_2.rb:9>
# The method returns a Proc object.
