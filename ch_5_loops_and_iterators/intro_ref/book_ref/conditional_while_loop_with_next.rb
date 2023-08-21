# conditional_while_loop_with_next.rb

x = 0

while x <= 10
  if x == 3
    x += 1
    next        # jump from that line-->next loop iteration w/o executing code beneath
  elsif x.odd?
      puts x
  end
    x += 1
end


=begin
# step by step solution:
x = 0  (considered even in mathematics)

since 0 is not odd...we do x += 1

x= 0 (not printed)

puts 1

x= 2 (not printed)

x = 3 ... x+= 1 .. x = 4

# `next` will force a jump from that line to the next loop iteration without executing
#   the code beneath it.

x = 1
x = 2 (not printed)
x = 3 (not printed)
x = 4 (not printed)
x = 5 
x = 6 (not printed)
x = 7
x = 8 (not printed)
x = 9
x = 10 (not printed)

# => 1
# => 5
# => 7
# => 9

=end