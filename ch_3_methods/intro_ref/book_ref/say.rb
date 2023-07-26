=begin
puts "hello"
puts "hi"
puts "how are you"
puts "I'm fine"
=end

=begin
# say.rb

def say(words)
    puts words + '.'
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")
=end

def say(words='hello')
    puts words + '.'
end

say()
say("hi")
say("how are you")
say("I'm fine")

