# proc_example_with_arguments.rb

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"