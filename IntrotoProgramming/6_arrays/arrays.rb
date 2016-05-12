
  #EXERCISE 1
  #Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

    #arr = [1, 3, 5, 7, 9, 11]
    #number = 3

    def number_in_array?(number, array)
      check = false
      array.each do |num| 
        if num==number 
            check = true
        end  
      end
      return check
    end

    arr.include?(3)


#EXERCISE 2
#What will the following programs return? What is value of arr after each?

  1. arr = ["b", "a"]
     arr = arr.product(Array(1..3))
     arr.first.delete(arr.first.last)

  #ANSWER: 1

  2. arr = ["b", "a"]
     arr = arr.product([Array(1..3)])
     arr.first.delete(arr.first.last)
  #ANSWER: [1,2,3]


  #EXERCISE 3
  #How do you print the word "example" from the following array?

  #arr = [["test", "hello", "world"],["example", "mem"]]
  #ANSWER = arr.last.first

#EXERCISE 4
What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

1. arr.index(5) #=>3

2. arr.index[5] #=> Error

3. arr[5] #=>8


#EXERCISE 5
#What is the value of a, b, and c in the following program?

#string = "Welcome to America!"
a = string[6] #=>e
b = string[11]#=>A
c = string[19]#=> nil


#EXERCISE 6
#You run the following code...

#names = ['bob', 'joe', 'susan', 'margaret']
#names['margaret'] = 'jody'

#...and get the following error message:

#TypeError: no implicit conversion of String into Integer
#  from (irb):2:in `[]='
#  from (irb):2
#  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

#What is the problem and how can it be fixed?

#ANSWER: 
  names[names.index('margaret')] = 'jody'

#EXERCISE 7
#Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. 
#You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

#ANSWER:
  orig_array = [1,2,3,4,5,6]
  new_array = orig_array.map{|num| num + 2}