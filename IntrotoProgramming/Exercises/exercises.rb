#Exercises

#Hint: you can refer to the Ruby doc for Array and Hash for help.
#Exercises

    #1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
        arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        arr.each{|val| puts val}


    #2. Same as above, but only print out values greater than 5.
        arr.each{|val| puts val if val>5}

    #3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
        arr.select{|val| val>5}

    #4. Append "11" to the end of the original array. Prepend "0" to the beginning.
        arr.push(11). unshift(0)      

    #5. Get rid of "11". And append a "3".
        arr.pop
        arr.push(3)

    #6. Get rid of duplicates without specifically removing any one value.
        arr.uniq!


    #7. What's the major difference between an Array and a Hash?
        'A hash has keys while arrays dont have keys'

    #8. Create a Hash using both Ruby syntax styles.
        hsh1 = {:spiderman => 'peter parker', :punisher => 'frank castle', :daredevil => 'matt murdock'}
        hsh1 = {spiderman: 'peter parker', punisher: 'frank castle', daredevil: 'matt murdock'}

    #9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}

        1. Get the value of key `:b`.
            h[:b]
        2. Add to this hash the key:value pair `{e:5}`
            h[e: 5]
        3. Remove all key:value pairs whose value is less than 3.5
            h.delete_if{|k,v| v<3.5}

    #10. Can hash values be arrays? Can you have an array of hashes? (give examples)
        #ANSWER: YES
        hsh = ['peter parker', 'frank castle', 'matt murdock']
        arr = [{:spiderman => 'peter parker'}, {:punisher => 'frank castle'}, {:daredevil => 'matt murdock'}]
    #11. Look at several Rails/Ruby online API sources and say which one you like best and why.

    #12. Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

        contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                    ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

        contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
        contacts["Joe Smith"] = contact_data[0]
        contacts["Sally Johnson"] = contact_data[1]
]

    #13. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
            joe_email = contact_data.first.first
            joe_email = contacts["Joe Smith"][:email]
           
            sally_phone = contact_data.first.last
            sally_phone = contacts["Sally Johnson"][:phone]
    #14. In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. 
    #Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

         #Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:

        contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
        contacts = {"Joe Smith" => {}}
        menu = [:email, :address, :phone]
        contacts.each do |n,hsh| 
            (0...menu.length).each do |item| 
                hsh[menu[item]] = contact_data[item]
            end
        end


        #As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

    #15. Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

        arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
        arr.delete_if{|val| val.start_with("s")}

        #Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".

        arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
        arr.delete_if{|val| val.start_with("s") | val.start_with("w")}

    #16. Take the following array:

        a = ['white snow', 'winter wonderland', 'melting ice',
             'slippery sidewalk', 'salted roads', 'white trees']

        #and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.
        a.map{|val| val.split}.flatten

    #17. What will the following program output?

        hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
        hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

        if hash1 == hash2
          puts "These hashes are the same!"
        else
          puts "These hashes are not the same!"
        end


        #ANSWER:
            puts "These hashes are the same!"

