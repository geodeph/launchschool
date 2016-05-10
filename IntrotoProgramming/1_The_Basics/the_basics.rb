  #Exercise 1
  #Add two strings together that, when concatenated, return your first and last name as your full name in one string.

  Firstname = "Julius"
  LastName = "Tesoro"

  puts "#{Firstname} +  #{LastName}"

  #Exercise 2
  #Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the:

  num = 5678

  puts ((num.to_i).to_s[-4]).to_i
  puts ((num.to_i).to_s[-3]).to_i
  puts ((num.to_i).to_s[-2]).to_i

  (num - num%1000)/1000# thousands place
  ((num- num%100)%1000)/100# hundreds place
  (((num- num%10)%1000)%100)/10# tens place
  ((num % 1000)%100)%10# ones places

  #Exercise 3
  #Write a program that uses a hash to store a list of movie titles with the year they came out. 
  #Then use the puts command to make your program print out the year of each movie to the screen. 
  #The output for your program should look something like this.
  movies = { The_HindenBurg: 1975,
           The_Incredibles: 2004,
           The_Wolf_of_wall_Street: 2013,
           Pearl_Harbor: 2001,
           Chariots_of_Fire: 1981 }

  puts movies[:The_HindenBurg]
  puts movies[:The_Incredibles]
  puts movies[:The_Wolf_of_wall_Street]
  puts movies[:Pearl_Harbor]
  puts movies[:Chariots_of_Fire]

  #Exercise 4
  #Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
  dates = [1975, 2004, 2013, 2001, 1981]

  for x in 0:4
    puts dates[x]
  end

  #Exercise 5
  #Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

  x = 4*3*2*1
  puts "factorial of 5 =", x = 5*x
  puts "factorial of 6 =", x = 6*x
  puts "factorial of 7 =", x = 7*x
  puts "factorial of 8 =", x = 8*x

  #Exercise 6
  #Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.

  puts 2.30**2
  puts 5.80**2
  puts 13.22**2

  #Exercise 7
  #What does the following error message tell you?
  #SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
  #  from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

  #Answer:  Enclosing parenthesis should be ')' used instead of a '}' 

  







