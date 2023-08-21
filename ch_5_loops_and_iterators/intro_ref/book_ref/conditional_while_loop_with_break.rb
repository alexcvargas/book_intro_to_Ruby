# conditional_while_loop_with_break.rb

x = 0

while x <= 10
  if x == 7
    break           # this will cause execution to exit the loop
  elsif x.odd?
      puts x
  end
    x += 1
end

=begin
x = 1
x = 2 (not printed)
x = 3 
x = 4 (not printed)
x = 5 
x = 6 (not printed)
x = 7 (not printed- in fact this was skipped b/c of break)
x = 8 (not printed- in fact this was skipped b/c of break)
x = 9 (not printed- in fact this was skipped b/c of break)
x = 10 (not printed- in fact this was skipped b/c of break)

# => 1
# => 3
# => 5
=end