# test_method.rb
def test(block_b)
  block_b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
p test(a)
p a
# => ["I like the letter: a", "I like the letter: b", "I like the letter: c"]
# => ["a", "b", "c"]