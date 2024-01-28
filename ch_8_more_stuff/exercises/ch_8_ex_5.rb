# 8.5
# Why does the following code give us the following error when run:?
# Because we are missing the `&` in the method definition to tell Ruby that
#   the argument is a block.
# Without the &, Ruby is expecting to receive a regular argument...and not a block
#   as an argument.

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }


# error log:
=begin
block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'
=end