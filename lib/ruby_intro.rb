# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  # YOUR CODE HERE
  array.inject(0){|sum,x| sum + x }
end

def max_2_sum(array)
  # YOUR CODE HERE
   array.max(2).inject(0){|sum,x| sum + x }
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  if arr.empty?
    return false
  else
    return arr.combination(2).any?{|a, b| a + b == n }
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, "
  str.concat(name)
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  
  if s.downcase.match?(/^[b-df-hj-np-tv-z]/)
    return true
  else
    return false
  end
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if (!s.match?(/\D/) && !s.match?(/[2-9]/) && s.length>0)
     return s.to_i(2)%4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
def isbn
  @isbn
end

def price
  @price
end

def isbn=(isbn)
  @isbn = isbn
end

def price=(price)
  @price = price
end

def initialize(isbn,price)
  @isbn = isbn
  @price = price
  raise ArgumentError, 'ISBN string is empty string or the price is less than or equal to zero' unless (!isbn.empty? && price > 0) 
end

def price_as_string
  @price = format('%.2f',@price)
  str = "$"
  return str.concat(@price.to_s)
end


end
