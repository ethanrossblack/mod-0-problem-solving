# Adding a little formatting flair for the command terminal
puts "".center(40,"=")
puts "  MOD 0 PROBLEM SOLVING  ".center(40,"=")
puts "".center(40,"="),""

# 1. Given an array of strings, print only the strings that have exactly 4 characters.
puts "  QUESTION 1  ".center(40,"-")
# ===OVERALL GOAL===
# The overall goal of this code is to print a list of strings exactly four letters long from an array
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
# ===OVERALL GOAL===
# The overall goal is to turn the letters of each string from an array completely lowercase and print them
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
# ===OVERALL GOAL===
# The overall goal is to write a method that returns strings from an array that contain "ing"
# ===PSEUDOCODE===
# Write a method that accepts an array as a parameter
# create a blank array called "ing_words"
# iterate through each string with .each
# check if the string contains "ing" with the .include? method
# if true, add to a new array called "ing_words"
# at the end, return the "ing_words" array

def check_for_ing(array)
    ing_words = []

    array.each do |word|
        ing_words.push(word) if word.include? "ing"
    end

    ing_words
end

array1 = %w[eating loving care caring jingle jangle jangling]
p check_for_ing(array1)

# ===============================================================
# 4. Start with an array of travel destinations. Print every travel destination in alphabetical order embedded in a sentence using string interpolation. For example, if the destination is "New York City", print something like "The next place I want to visit is New York City!"

# ===============================================================
# 5. Given a sentence with only lowercase letters, print the same sentence with the first letter of every word capitalized. For example, if you were given "Turing is the best", return "Turing Is The Best" instead!


# ===============================================================
# 6. Write a method or function that determines how much a person will pay in taxes in the United States based on their annual income. The method or function should accept a number representing the individual's annual income as an argument and return the amount they will owe in taxes for that year.

# I WANT TO SOLVE THIS LATER BUT DON"T HAVE TIME BEFORE MY REVIEW

# puts "","  QUESTION 6  ".center(40,"-")
# ===OVERALL GOAL===
# The overall goal is to write a method that spits out how much a person will pay in taxes based on the income they input. I'll have to look over tax rates and decuctions from the US government to figure it it.
# ===PSEUDOCODE===
# Alright, I need to make a couple of assumptions here and simplify things.
# 1. This method is based on a basic single filer using a standard deduction for tax year 2022. Maybe one day I'll implement joint filing or any other write-offs/tax credits, but I think I've given myself enough good parameters for a Mod 0 coding challenge.
# 2. I'm using the standard deduction of $12,950 for a single filer.
# 3. I'm using these marginal rates from the IRS
#     Marginal Rates: For tax year 2022, the top tax rate remains 37% for individual single taxpayers with incomes greater than $539,900 ($647,850 for married couples filing jointly).
#     The other rates are:
#     35%, for incomes over $215,950 ($431,900 for married couples filing jointly);
#     32% for incomes over $170,050 ($340,100 for married couples filing jointly);
#     24% for incomes over $89,075 ($178,150 for married couples filing jointly);
#     22% for incomes over $41,775 ($83,550 for married couples filing jointly);
#     12% for incomes over $10,275 ($20,550 for married couples filing jointly).
#     The lowest rate is 10% for incomes of single individuals with incomes of $10,275 or less ($20,550 for married couples filing jointly).
# After those assumptions, i'll describe the method
# I need to make a method that takes in a single number and returns another number
# Inside the method, I'll create a new variable called taxes that will store the amount they owe that year
# Then, I'll subtract the standard deduction of $12,950 from their inputted income to use as their taxable income
# Then, through a series of if elsif statements, I'll check to see if that person's income is above a certain bracket. If it is, I'll add that amount from the bracket into the taxes variable
# At the end, I'll return the taxes variable.

# def collect_taxes(income)
#     taxes = 0
#     income -= 12950

#     if income > 539900
    
#     end
# end