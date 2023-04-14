# Adding a little formatting flair for the command terminal
puts "".center(40,"=")
puts "  MOD 0 PROBLEM SOLVING  ".center(40,"=")
puts "".center(40,"="),""

# 1. Given an array of strings, print only the strings that have exactly 4 characters.
puts "  QUESTION 1  ".center(40,"-")
# ===PSEUDOCODE===
# create an array of strings of different lengths, some of them are 4 letters
# iterate through the strings of the array with the .each method
# check if the string has exactly 4 characters with the .length method
# if the string has exactly 4 characters, print it
# (I accidentally learned that you can write an array of plain strings in Ruby without using parenthesis by including %w before the array, so I'm going to use that for now to make my life easier)

beatles = %w[John Paul George Ringo]

beatles.each do |beatle|
    p beatle if beatle.length == 4
end

# ===============================================================
# 2. Start with an array of strings with a mix of uppercase and lowercase letters. Print every word in all lowercase letters.
puts "","  QUESTION 2  ".center(40,"-")
# ===PSEUDOCODE===
# create an array of strings with uppercase and lowercase letters
# iterate through the array with .each
# use the .downcase method to turn all letters of each string completely lowercase
# print the lowercase string

beatles = ["John Lennon", "Paul McCartney", "George Harrison", "Ringo Starr"]

beatles.each do |beatle|
    p beatle.downcase
end

# ===============================================================
# 3. Write a method or function that accepts an array of strings as an argument. The method or function should return an array of only the words that include the letter combination "ing".
puts "","  QUESTION 3  ".center(40,"-")

# ===============================================================
# 4. Start with an array of travel destinations. Print every travel destination in alphabetical order embedded in a sentence using string interpolation. For example, if the destination is "New York City", print something like "The next place I want to visit is New York City!"

# ===============================================================
# 5. Given a sentence with only lowercase letters, print the same sentence with the first letter of every word capitalized. For example, if you were given "Turing is the best", return "Turing Is The Best" instead!


# ===============================================================
# 6. Write a method or function that determines how much a person will pay in taxes in the United States based on their annual income. The method or function should accept a number representing the individual's annual income as an argument and return the amount they will owe in taxes for that year.