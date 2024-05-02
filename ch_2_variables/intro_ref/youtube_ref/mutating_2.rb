# mutating_2.rb
x = "hello"

# The upcase! method mutates the calling string to an upcased version
puts x.object_id == x.upcase!.object_id
puts "hello".object_id == "hello".upcase!.object_id

# answer will be two boolean evaluations-one on each line

=begin
x = "hello"
object_id of x == object_id of X after it's been mutated by upcase!
the mutation will not change the object_id even though the contents will be changed
# => true


object_id of "hello"    7480
object_id of "hello"    7800
in this case "hello".object_id will not equal "HELLO".object_id
# everytime you create a string literal ...in this case "hello" ..you create
#   a new object with it's own object_id

=end