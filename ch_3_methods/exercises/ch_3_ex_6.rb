def calculate_product(num1, num2)
  num1 * num2
end
calculate_product(2)

# 6. What does the following error message tell you?
=begin
ArgumentError: wrong number of arguments (1 for 2)
 from (irb):1:in `calculate_product'
 from (irb):4
 from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
=end
# you are calling a method called `calculate_product` that requires two arguments
#   but you are only providing one.





=begin
# error as follows:
Traceback (most recent call last):
        1: from /home/ec2-user/book_intro_to_ruby/ch_3_methods/exercises/ch_3_ex_6.rb:17:in `<main>'
/home/ec2-user/book_intro_to_ruby/ch_3_methods/exercises/ch_3_ex_6.rb:13:in 
`calculate_product': wrong number of arguments (given 1, expected 2) (ArgumentError)
=end