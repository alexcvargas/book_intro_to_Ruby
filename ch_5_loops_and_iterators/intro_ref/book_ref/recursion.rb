# recursion.rb

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

doubler(2)

# => 4    result of start being passed the value of 2 then mult by 2
# => 8    start is now = 4..resulting in doubler(start * 2)
# => 16   start is now = 8..resulting in doubler(start * 2)