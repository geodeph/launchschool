#EXERCISE 1

#Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.

# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

fam = family.select{|k, v| k == :sisters  || k == :brothers}
fam.values.flatten

#EXERCISE 2
#Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.
#ANSWER: The merge and merge! function adds content of another hash to a hash. The difference is merge! adds the other hash to the hash permanently.

hsh1 = {uncles: ["bob", "joe", "steve"], sisters: ["jane", "jill", "beth"]}
hsh2 = hsh1
hsh3 = {uncles: ["john", "george", "jim"], sisters: ["evelyn", "yen", "julienne"]}

hsh1.merge(hsh3)
hsh2.merge!(hsh3)

hsh1
hsh2

#EXERCISE 3
#Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
family.each_key{|k| puts k}
family.each_values{|v| puts v}


#EXERCISE 3
#Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

person[:name]

#EXERCISE 4
#What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.
value?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person.value?'bob'



#EXERCISE 5
#Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

#Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
(etc)

anagram = Hash.new{|hsh,key| hsh[key] = [] }
for x in words
  #new_array = []
  key = x.split('').sort.join
  anagram[key]<<x
end

anagram.each{|num| puts num}





#EXERCISE 6

#Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

#What's the difference between the two hashes that were created?
#ANSWER: The string value of x will be passed on to x so the key of the my_hash2 will be "hi there"


#EXERCISE 7
#If you see this error, what do you suspect is the most likely problem?

#NoMethodError: undefined method `keys' for Array

#A. We're missing keys in an array variable.

#B. There is no method called keys for Array objects.

#C. keys is an Array object, but it hasn't been defined yet.

#D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.

#ANSWER: D. 
