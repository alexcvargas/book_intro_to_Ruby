# 8.4
# Modify the code in exercise 2 to make the block execute properly.
def execute(&block)
  block.call
end

p execute { puts "Hello from inside the execute method!" }

# output# => Hello from inside the execute method!
# return# => nil