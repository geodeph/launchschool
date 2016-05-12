#EXERCISE 1
#What does the each method in the following program return after it is finished executing?

#    x = [1, 2, 3, 4, 5]
#    x.each do |a|
#      a + 1
#    end

#ANSWER: 6

#EXERCISE 2
#Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

condition = ""
while condition != "STOP"
    puts "Input"
    condition  = gets.chomp
end

#EXERCISE 3
#Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.
["a", "b", "c"].each_with_index{|a,i| puts "#{i} - #{a}"}


#EXERCISE 4
#Write a method that counts down to zero using recursion.
def count_to_zero(start)
  puts start
  if start>0
    count_to_zero(start-1)
  end
end
