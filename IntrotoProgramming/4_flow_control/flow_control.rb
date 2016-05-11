
#EXERCISE 1
#Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.

#  1. 
  (32 * 4) >= 129 #=>false
#  2. 
  false != !true #=>false
#  3. 
  true == 4  #=>false
#  4. 
  false == (847 == '874') #=>true
#  5. 
  (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false #=>true


#EXERCISE 2
#Write a method that takes a string as argument. The method should return the all-caps version of the string, only if the string is longer than 10 characters. 
#Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)
  def allcaps(text)
    if text.length > 10
      return text.upcase
    else
      return text
    end
  end

#EXERCISE 3
#Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.
  puts "Give a number between 0 and 100"
  number = gets.chomp.to_i

  if number.between?(0,50)
    puts "the number is between 0 and 50!"
  elsif number.between?(51,100)
    puts "the number is between 51 and 100!"
  elsif number>100
    puts "the number is above 100"
  end



#EXERCISE 4
#What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.

  #1. 
    '4' == 4 ? puts("TRUE") : puts("FALSE") 
    #=>'FALSE'

  #2. 
     x = 2
     if ((x * 3) / 2) == (4 + 4 - x - 3)
       puts "Did you get it right?"
     else
       puts "Did you?"
     end
    #=>"Did you get it right?"

  #3. 
     y = 9
     x = 10
     if (x + 1) <= (y)
       puts "Alright."
     elsif (x + 1) >= (y)
       puts "Alright now!"
     elsif (y + 1) == x
       puts "ALRIGHT NOW!"
     else
       puts "Alrighty!"
     end
     #=> "Alright now!"

#EXERCISE 5
#Rewrite your program from exercise 3 using a case statement. Wrap the statement from exercise 3 in a method and wrap this new case statement in a method. Make sure they both still work.
    def find_range(number)
      case number
      when number.between?(0,50)
        puts "the number is between 0 and 50!"
      when number.between?(51,100)
        puts "the number is between 51 and 100!"
      when number>100
        puts "the number is above 100"
      end
    end
    
    puts "Give a number between 0 and 100"
    num = gets.chomp.to_i
    find_range(num)

#EXERCISE 6
#When you run the following code...

#    def equal_to_four(x)
#      if x == 4
#        puts "yup"
#      else
#        puts "nope"
#    end

#    equal_to_four(5)

  #You get the following error message..

  #  test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end

  #Why do you get this error and how can you fix it?
  #ANSWER: There is no end statement to enclose the if-else statement

    def equal_to_four(x)
      if x == 4
        puts "yup"
      else
        puts "nope"
      end
    end

    equal_to_four(5)