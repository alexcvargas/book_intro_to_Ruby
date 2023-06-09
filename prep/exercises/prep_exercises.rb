# the following is a direct copy of the contents of the terminal window
#   for exercises 1 and 2

# Terminal window input and output for exercise 1
ec2-user:~/book_intro_to_ruby/prep (main) $ ls
exercises  intro_ref
ec2-user:~/book_intro_to_ruby/prep (main) $ cd exercises
ec2-user:~/book_intro_to_ruby/prep/exercises (main) $ ls
prep_exercises.rb
ec2-user:~/book_intro_to_ruby/prep/exercises (main) $ mkdir my_folder
ec2-user:~/book_intro_to_ruby/prep/exercises (main) $ ls
my_folder  prep_exercises.rb
ec2-user:~/book_intro_to_ruby/prep/exercises (main) $ cd my_folder
ec2-user:~/book_intro_to_ruby/prep/exercises/my_folder (main) $ tough one.rb
bash: tough: command not found
ec2-user:~/book_intro_to_ruby/prep/exercises/my_folder (main) $ ls
ec2-user:~/book_intro_to_ruby/prep/exercises/my_folder (main) $ touch one.rb two.rb
ec2-user:~/book_intro_to_ruby/prep/exercises/my_folder (main) $ ls
one.rb  two.rb
ec2-user:~/book_intro_to_ruby/prep/exercises/my_folder (main) $ nano one.rb
ec2-user:~/book_intro_to_ruby/prep/exercises/my_folder (main) $ ls
one.rb  two.rb
ec2-user:~/book_intro_to_ruby/prep/exercises/my_folder (main) $ nano two.rb
ec2-user:~/book_intro_to_ruby/prep/exercises/my_folder (main) $ ls
one.rb  two.rb
ec2-user:~/book_intro_to_ruby/prep/exercises/my_folder (main) $ ruby one.rb
this is file one
ec2-user:~/book_intro_to_ruby/prep/exercises/my_folder (main) $ ruby two.rb
this is file two
ec2-user:~/book_intro_to_ruby/prep/exercises/my_folder (main) $ ls
one.rb  two.rb

# Terminal window input and output for exercise 2:
ec2-user:~/book_intro_to_ruby/prep/exercises/my_folder (main) $ rm -r ./my_folder
rm: cannot remove ‘./my_folder’: No such file or directory
ec2-user:~/book_intro_to_ruby/prep/exercises/my_folder (main) $ rm -r ./
rm: refusing to remove ‘.’ or ‘..’ directory: skipping ‘./’
ec2-user:~/book_intro_to_ruby/prep/exercises/my_folder (main) $ cd ../
ec2-user:~/book_intro_to_ruby/prep/exercises (main) $ ls
my_folder  prep_exercises.rb
ec2-user:~/book_intro_to_ruby/prep/exercises (main) $ rm -r ./my_folder/
ec2-user:~/book_intro_to_ruby/prep/exercises (main) $ ls
prep_exercises.rb
ec2-user:~/book_intro_to_ruby/prep/exercises (main) $ 