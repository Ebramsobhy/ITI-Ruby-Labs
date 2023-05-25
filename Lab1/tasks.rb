# Problem Solving in https://www.codewars.com/ 

                  # Task 1 #
#Create a function that returns the sum of the two lowest positive numbers
#given an array of minimum 4 positive integers.
#No floats or non-positive integers will be passed.
#For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7. 

def sum_two_smallest_numbers(numbers)
    sorted_numbers = numbers.sort
    return sorted_numbers[0] + sorted_numbers[1]
end

                   # Task 2 #
# You probably know the "like" system from Facebook and other pages.
# People can "like" blog posts, pictures or other items.
# We want to create the text that should be displayed next to such an item.

# Implement the function which takes an array containing the names of people
# that like an item. It must return the display text as shown in the examples:   

#         []                                -->  "no one likes this"
#         ["Peter"]                         -->  "Peter likes this"
#         ["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
#         ["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
#         ["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"

def likes(names)
    num_names = names.length
    case num_names
    when 0
      return "no one likes this"
    when 1
      return "#{names[0]} likes this"
    when 2
      return "#{names[0]} and #{names[1]} like this"
    when 3
      return "#{names[0]}, #{names[1]} and #{names[2]} like this"
    else
      return "#{names[0]}, #{names[1]} and #{num_names-2} others like this"
    end
  end

                      # Task 3  
# Write a function that takes in a string of one or more words,
# and returns the same string, but with all five or more letter words reversed
# (Just like the name of this Kata).
# Strings passed in will consist of only letters and spaces.
# Spaces will be included only when more than one word is present.

# Examples:    
       #spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" 
       #spinWords( "This is a test") => returns "This is a test" 
       #spinWords( "This is another test" )=> returns "This is rehtona test"  

def spin_words(string)
  words = string.split(" ")
  new_words = []
  words.each do |word|
    if word.length >= 5
      new_words << word.reverse
    else
      new_words << word
    end
  end
  return new_words.join(" ")
end   

# You are going to be given a word. Your job is to return the middle character of the word.
# If the word's length is odd, return the middle character.
# If the word's length is even, return the middle 2 characters.

#Examples:
    # Kata.getMiddle("test") should return "es"
    # Kata.getMiddle("testing") should return "t"
    # Kata.getMiddle("middle") should return "dd"
    # Kata.getMiddle("A") should return "A"

def get_middle(word)
     length = word.length
    if length % 2 == 0
         return word[length/2-1..length/2]
    else
        return word[length/2]
    end   
end   