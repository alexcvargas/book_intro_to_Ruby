# Do this at the start of every login
# $ rvm install 3.2.0
# $ ruby -v

# if you need to install rubocop 1.51.0
# $ gem install rubocop -v 1.51.0
# $ rubocop -v

cd book_intro_to_ruby/ch_2_variables/intro_ref/book_ref
cd book_intro_to_ruby/ch_2_variables/exercises

irb --nomultiline

# git push -u origin main

# and if you need to uninstall a previous version you can type:
# $ gem uninstall rubocop --version 1.52.0

# https://stackoverflow.com/questions/5902488/uninstall-old-versions-of-ruby-gems


# Stylish Ruby - some specific stylistic conventions used:

# 1.Your text editor's tab function should be set to 2 spaces

# 2.When you see a # at the start of a line...anything after that on the same line is a comment

# 3)Use of snake_case formatting
# 3a.Naming a file
this_is_a_snake_cased_file.rb

# 3b.Assigning a variable
forty_two = 42
  
# 3c.Defining a method
def this_is_a_great_method
  # do stuff
end



# 4.Representing a contant variable
#   Constant Declaration
FOUR = 'four'
FIVE = 5

# 5) When working with 
   do / end 
# blocks prefer
   {}
# when the entire code expression fits on one line

# 5a. Multi-line
 [1, 2, 3].each do |i|
   # do stuff
 end

# 5b. Single-line
 [1, 2, 3].each { |i| do_some_stuff }
 
 
 #6. Declaring a class name - use CamelCase(PascalCase) formatting
 # CamelCase uses capitalization for each word with no spaces
 # Class naming
 class MyFirstClass
 end
 
 class MySecondClass
 end
 
 
 # String class name
 #  A String object holds and manipulates an arbitrary sequence of bytes,
 #    typically representing chars...and may be created using String::new or as literals.
 #    Because of aliasing issues ...strings should be aware of the methods that modify the 
 #    contents of a String object.
 #  Typically, methods with names ending in "!" modify their receiver, while those without a "!"
 #    return a String....there are exceptions such as String#[]=
 
String
# The above shows the word "String".
#   This is the Class or Module(to cover more in detail later).
#   In some documentation, the class name will be referred to with a  ::  symbol.

# for example:
Encoding::Converter
# the  ::  symbol is used to define a namespace which is just a way to group
#   classes in Ruby and differentiate from other classes with the same name.

# For example 
ActiveRecord:Base
#   is referring to the  Base  class in the  ActiveRecord  module, to differentiate 
#   from other classes also named  Base

# However when looking at the method lists below, the  ::  means something completely different.
#  the method after  ::  is a class method
#  whether the top heading says String or Encoding::Converter, it's referring
#   to the class or module name and the rest of the page will be documenting that class/module.

#Methods:
#   class methods:(denoted by a  :: )
::new
::try_convert

#   instance methods:(denoted by a  #  )
#%
#*
#+
#<<
#<==>
#==
#===
#=~
#[]
#[]=
#ascii_only?
#b
#bytes
#bytesize
#byteslice
#capitalize
#capitalize!
#casecmp
#casecmp?
#center
#chars
#chomp
#chomp!
#chop
#chop!
#chr
#clear
#codepoints
#concat
#count
#crypt
#delete
#delete!
#delete_prefix
#delete_prefix!
#delete_suffix
#delete_suffix!
#downcase
#downcase!
#dump
#each_byte
#each_char
#each_codepoint
#each_grapheme_cluster
#each_line
#empty?
#encode
#encode!
#encoding
#end_with?
#eql?
#force_encoding
#freeze
#getbyte
#grapheme_clusters
#gsub
#gsub!
#hash
#hex
#include?
#index
#initialize_copy
#insert
#inspect
#intern
#length
#lines
#ljust
#lstrip
#lstrip!
#match
#match?
#next
#next!
#oct
#ord
#partition
#prepend
#replace
#reverse
#reverse!
#rindex
#rjust
#rpartition
#rstrip
#rstrip!
#scan
#scrub
#scrub!
#setbyte
#size
#slice
#slice!
#split
#squeeze
#squeeze!
#start_with?
#strip
#strip!
#sub
#sub!
#succ
#succ!
#sum
#swapcase
#swapcase!
#to_c
#to_f
#to_i
#to_r
#to_s
#to_str
#to_sym
#tr
#tr!
#tr_s
#tr_s!
#undump
#unicode_normalize
#unicode_normalize!
#unicode_normalized?
#unpack
#unpack1
#upcase
#upcase!
#upto
#valid_encoding?


# From the method list above, we can see that there's a  #split  method for strings...
#   which means that  split  is an instance method, and we can call on that method
#   on any string directly:

#example: good
irb :001 > "world wide web".split
 => ["world", "wide", "web"]
 
# from the methods above...there are two class methods
:: new
# and
::try_convert
# Public class methods are called directly from the class.

#example: good
irb :001 > b = String.new("blue")
 => "blue"
irb :002 > String.try_convert("red")
 => "red"
 
# 3 MOST IMPORTANT THINGS TO REMEMBER WHEN READING RUBY DOCUMENTATION:
#   1. The class/module you are looking at
#   2. the class's or module's available class methods
#   3. how to use said methods


# Parent
#   In Ruby, every class sub-classes from some "parent".
#    we will learn later about object oriented programming.
#   The class we are looking at also had access to  instance and class methods...
#   which are documented in the parent class.

# So in this example, the  String  class's parent is  Object
#   which means that in addition to the methods described in this documentation,
#    the methods of  Object  are also available to strings.


# This is not an exhaustive list of commands that you will use to run and test Ruby code.
# Command Line and irb

# In the terminal, in the command promp...when you see the  $  symbol, that
#  represents the command line prompt. Also command line and terminal terms are interchangable.


# Creating a new directory.
mkdir new_dir
# ==> makes a new directory called "new_dir"

# To navigate into the folder you just created
cd new_dir

# to create a 'new_file'
touch new_file.rb

# to delete the file you just created
rm new_file.rb

# to navigate out of the current folder to the one above
cd ../

# to delete the directory you just created
rmdir new_dir

# to remove the directory and files within at the same time, go to the directory
#  above 'new_dir' and type in the following command:
rm -R new_dir

# irb - stands for Ruby's built-in interactive environment
irb
# ==> 2.7.5 :001
#  the above is the details of what version of Ruby we are runing. the 2.7.5 is detailing
#  what verion of Ruby we are running and the .001 tells us which text line we are on.
# you can type in a Ruby command after the prompt and see its output and what it returns.

# good
irb
puts 'hello world!'
# ==> irb :001 > puts 'hello world!'
# ==> => nil
# ==> irb :002 >

# the line:
puts 'hello world'
# prints the phrase 'hello world!' to the screen and return a
nil
# object value. We will talk about return values later.
# when you want to exit irb back to the command line, just type 
exit

# Running Ruby Code
#  when you want to run a Ruby file, denoted by the .rb extension, you can type:
#  the  ruby  command followed by the file name & extension.
ruby example.rb
# assuming we have a file that contains the line  puts 'hellow world!'
#  the following would print after running the file:
$ ruby example.rb
hello world!
$

# When you run a Ruby frile from the command line, the code is executed by something
#  called an interpreter....which basically takes Ruby code and turns it into 
#  code your computer undserstands.

# Last tip, if you are ever stuck in an infinite loop or want to stop running
#  a program, then usethe following to send an abord signal to the running program:
# use Ctrl+C to exit


# Ruby "Gems"
#  RubyGems or just "gems" for short have a 2-sided definition.
#  1) A collection of Ruby files, or Ruby library, that performs a certain task.
#  2)Reference to the publishing system that is behind organizing, listing, and
#   publishing those libraries or gems.

# The publishing system behind RubyGems is designed to let you download, publish
#  and use useful Ruby libraries on your system.
#  That system is powered by a website rubygems.org
#  and the libraries that the system publishes are called "gems".

# RubyGems is integrated into Ruby 1.9 and newer by default
#  and it can help Rubyists speed up development.
#  The code in a gem is like a pre-packaged bundle of code written by someone
#  to solve a useful problem.
#  Ruby gems have versions based on the Semantic Versioning standard.
#  All the public installable gems are hostred at rubygems.org, though their code
#  is hosted on a code repository like GitHub's.
#  and a gem is said to be "cut" when a new version becomes available.

# The
gem  # command allows you to use RubyGems.
# When combined with the
install  # command, one can download and install gems with their dependencies
#  and any relevant documentation. The complete command is like so:
gem install <gem name>
# where
<gem name>  # is the actual name of the gem you want to install.

# Installing gems like this is fine for one-time usage but with time, you'll lose
#  track of which gems belong to which projects.
# As you learn more Ruby, you'll be introduced to the
Gemfile  # which offers a simple solution for organizing gems and their 
#  dependencies in a central location.
# You can check out the gems site: 
#  https://guides.rubygems.org/rubygems-basics/
#  for other useful commands.
# throughout this book and your journey as a Ruby developer, when you
gem install <some_gem>  # What is going on behind the scenes is a search through
#  rubygems.org and a pull down of the appropriate gem for you to use on your local machine.


# Debugging Ruby code with the
# gem install pry
# which gives you the 
pry  #command which when entered in your terminal will open a new session as with
irb

# When you want to use
pry  # for debugging, you'll have to
require "pry"  # and insert a
binding.pry  # in your file like so:

# preparation.rb
require "pry"

a = [1,2,3]
a << 4
binding.pry  # execution will pause here, allowing you to inspect all objects
puts a

# what this means is that when the program gets to where 
binding.pry  # has been declared, it'll open a new
pry  # session instead of moving on the next line in the code.
# This gives you the opportunity to play around with your variables and objects
#  to see why things are not working.
# This is an extremely powerful debugging technique since it lets you pause execution
#  to inspect the state of all variables and objects at hat line of code.
# After you're done looking at your variables, you can continue the execution with
Ctrl + D

# We've just scratched the surface on what you should know to debuf simple Ruby code but
#  wanted to introduce this method because it's a better alternative to using
puts  # for debugging and gives you a good idea of what's really happening with your code.

