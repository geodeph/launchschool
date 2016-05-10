  #Exercise 1
  #Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.
  puts "What is your name?"
  user = gets.chomp
  puts "Hello #{user}"

  #Exercise 3
  #Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly.
  10.times{puts user}

  #Exercise 4
  #Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.
  puts "What is your first name?"
  first_name = gets.chomp

  puts "What is your last name?"
  last_name = gets.chomp
  
  puts "#{first_name} #{last_name}"

  #Exercise 5
  #What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?
  #ANSWER: both 3. There are no errors

  #Exercise 6
  #What does the following error message tell you?
  #NameError: undefined local variable or method `shoes' for main:Object
  #from (irb):3
  #from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

  #ANSWER: There is no 'shoes' variable or method


