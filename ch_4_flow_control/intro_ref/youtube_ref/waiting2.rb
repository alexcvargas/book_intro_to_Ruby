# waiting2.rb

time_until_bus = 3

loop do
  time_until_bus = time_until_bus - 1
  
  if time_until_bus == 0
    puts "Bus arrived - all aboard!"
    break
  end
  
  puts "#{time_until_bus} minute(s) until next bus."
end


# => 2 minute(s) until next bus.
# => 1 minute(s) until next bus.
# => Bus arrived - all aboard!