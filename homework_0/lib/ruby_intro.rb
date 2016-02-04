# When done, submit this entire file to the autograder.

# Part 1

# Define a method sum(array) that takes an array of integers as an argument
# and returns the sum of its elements.
# For an empty array it should return zero.
def sum(arr)
  arr.reduce(0, :+)
end

# Define a method max_2_sum(array)
# which takes an array of integers as an argument and returns the sum of its two largest elements.
# For an empty array it should return zero.
# For an array with just one element, it should return that element.
def max_2_sum(arr)
  return 0 if arr.empty?
  return arr[0] if arr.size == 1

  first_max = arr.max
  arr.delete_at arr.index first_max

  second_max = arr.max


  first_max + second_max
end

# Define a method sum_to_n?(array, n) that takes an array of integers and an additional integer, n, as arguments
# and returns true if any two elements in the array of integers sum to n.
# sum_to_n?([], n) should return false for any value of n, by definition.
def sum_to_n?(arr, n)
  return false if arr.empty?

  combinations = arr.combination(2).to_a # for [1, 2, 3] return [[1, 2], [1, 3], [2, 3]]
  sums = combinations.map { |combination| combination.reduce(0, :+) }

  sums.include? n
end

# Part 2

# Define a method hello(name) that takes a string representing a name
# and returns the string "Hello, " concatenated with the name.
def hello(name)
  "Hello, #{name}"
end

# Define a method starts_with_consonant?(s) that takes a string
# and returns true if it starts with a consonant and false otherwise.
# (For our purposes, a consonant is any letter other than A, E, I, O, U.)
# NOTE: be sure it works for both upper and lower case and for nonletters!
def starts_with_consonant?(s)
  first_symbol = s[0]
  return false if first_symbol.nil?

  if %w(a e i o u A E I O U).include? first_symbol
    false # vowels
  elsif ('a'..'z').include? first_symbol.downcase
    true #consolants
  else
    false #nonletters
  end
end

# Define a method binary_multiple_of_4?(s) that takes a string
# and returns true if the string represents a binary number that is a multiple of 4.
# NOTE: be sure it returns false if the string is not a valid binary number!
def binary_multiple_of_4?(s)
  return false if s.empty?

  not_valid_symbol_position = s =~ /[^0,1]/
  return false unless not_valid_symbol_position.nil?


  number = s.to_i(2)
  (number % 4 == 0) ? true : false
end

# Part 3

# Define a class BookInStock which represents a book with
# an ISBN number, isbn, # and price of the book as a floating-point number, price, # as attributes.
#
# The constructor should accept the ISBN number (a string,
# since in real life ISBN numbers can begin with zero and can include hyphens)
# as the first argument and price as second argument,
# and should raise ArgumentError (one of Ruby's built-in exception types)
# if the ISBN number is the empty string # or if the price is less than or equal to zero.
# Include the proper getters and setters for these attributes.
#
# Include a method price_as_string
# that returns the price of the book formatted with a leading dollar sign and two decimal places,
# that is, a price of 20 should format as "$20.00" and a price of 33.8 should format as "$33.80".
class BookInStock

end
