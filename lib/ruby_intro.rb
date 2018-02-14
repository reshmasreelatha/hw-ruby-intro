# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum_arr = 0
    if arr.empty?
      sum_arr = 0
    else
      sum_arr = arr.reduce(:+)
    end
end

def max_2_sum arr
  sum = 0
  if arr.empty?
      sum = 0
  else
  sum = arr.max(2).reduce(:+)
  end
end

def sum_to_n? arr, n 
  if arr.empty?
    false
  end
  sum = arr.combination(2).find { |x,y| x+y ==n }
    return sum!=nil
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if !s.is_a?(String) || s.empty?
    false
  else
    if s.downcase.start_with?('b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z')
      true
    else
      false
    end
  end
end

def binary_multiple_of_4? s
  if s.gsub(/[01]/,'') == '' && !s.empty? && s.to_i(2) % 4 == 0
    true
  else
    false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn,price)
    raise ArgumentError.new("ISBN is empty string") if isbn.empty?
    @isbn = isbn
    raise ArgumentError.new("Price less than or equal to 0") if price <= 0
    @price = price
  end
  
  def price_as_string
    "$#{"%0.2f" % @price}"
  end
  
end
