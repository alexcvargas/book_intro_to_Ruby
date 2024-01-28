# Ch_8.1
# Write a program that checks if the sequence of characters "lab" exists
#   in the following strings.
# If it does exist, print out the word.

# Words include:
#   "laboratory"
#   "experiment"
#   "Pans Labryinth"
#   "elaborate"
#   "polar bear"


def has_a_lab?(string)
  if /lab/.match(string)
    puts "#{string}"
  else
    puts "No match here."
  end
end

has_a_lab?("laboratory")
has_a_lab?("experiment")
has_a_lab?("Pans Labryinth")
has_a_lab?("elaborate")
has_a_lab?("polar bear")

# book solution below that also works:
https://docs.ruby-lang.org/en/3.2/Regexp.html#class-Regexp-label-3D~+Operator
=begin
def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end


check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")
=end

# If we wanted a case insensitive match search we can use the i option like so..
#   if /lab/i =~ word