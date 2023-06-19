# 7. What does the following error message tell you?
puts "the following error: "
puts " SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
  from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>' "

puts "This means is the system was expecting a '}' to end what I think was "
puts "an array or hash being created. There is an open bracket with no closed bracket afterwards."