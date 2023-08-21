# perform_again.rb

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end



=begin

answer = gets.chomp

while answer != 'Y'
  puts "Do you want to do that again?"
  answer = gets.chomp
=end
