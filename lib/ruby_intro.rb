# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0){
    |sum,x| sum + x 
  }
end

def max_2_sum arr
  
  length = arr.length
  if length == 0
    sum = 0
  elsif length == 1
    sum = arr.at(0)
  else
    sortArr = arr.sort{|a,b| a <=> b }
    sum = sortArr.at(length-1) + sortArr.at(length-2)
  end
end

def sum_to_n? arr, n
  if arr.length <= 1
    return false
  else
    length = arr.length
    i = 0
    while i < length
      j = 0
      x = arr.at(i)
      while j < length
        if j == i
          j = j + 1
          if j == length
            return false
          end
        end
        y = arr.at(j)
        z = x + y
        if z == n
          return true
        end
        j = j + 1
      end
      i = i + 1
    end
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  ch = s.chars
  if not letter?(ch.at(0))
    return false
  end
  bool = ['a','e','i','o','u','A','E','I','O','U'].include? ch.at(0)
  return (not bool)
end

def letter? (lookAhead)
  lookAhead =~ /[[:alpha:]]/
end

def binary_multiple_of_4? s
  ch = s.chars
  length = s.length
  if length == 1
    return s == '0'
  end
  if ch.at(length-2) == '0' and ch.at(length-1) == '0'
    return s =~ /^[01]*00$/
  end
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize (isbn, price)
    
    raise ArgumentError.new(
      "ISBN is not a valid string"
    ) if isbn.length == 0
    
    raise ArgumentError.new(
      "Price can not be zero"
    ) if price <= 0
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    @price = '%.2f' % @price
    return "$" + @price.to_s
  end
  
end
