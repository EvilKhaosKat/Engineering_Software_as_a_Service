# When done, submit this entire file to the autograder.

# Part 1

# Define a method sum(array) that takes an array of integers as an argument
# and returns the sum of its elements.
# For an empty array it should return zero.
def sum arr
  return 0 if arr.empty?

  arr.reduce(:+)
end

# Define a method max_2_sum(array)
# which takes an array of integers as an argument and returns the sum of its two largest elements.
# For an empty array it should return zero.
# For an array with just one element, it should return that element.
def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.size == 1

  first_max = arr.max
  arr.delete_at arr.index first_max

  second_max = arr.max

  first_max + second_max
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
