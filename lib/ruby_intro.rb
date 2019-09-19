# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0;
  arr.each do |val|
    sum += val
  end
  return sum
  
end

def max_2_sum arr
  if arr.length == 0
    sum = 0
  elsif arr.length == 1
   sum = arr[0]
  else
    sorted = arr.sort
    sum = sorted[-2] + sorted[-1]
  end
  return sum
end


def sum_to_n? arr, n
  if arr.length == 0 or arr.length == 1
    return false
  else 
    sorted = arr.sort
    i = 0
    while i < sorted.length 
      j = i + 1
      while j < sorted.length
        if sorted[i] + sorted[j] = n
          return true
        end
        j += 1
      end 
      i += 1
    end
    return false
  end 
end

# Part 2

def hello(name)
  name.strip
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.length == 0
    return false
  end
  if s.match(/\A[a-zA-Z]/)
    if s.match(/\A[^aeiouAEIOU]/)
      return true
    end
    return false
  end
  false
end

def binary_multiple_of_4? s
 if s !~ /^[0-1]/
   return false
  else
    if (s.to_i) % 4==0
      return false
    end 
    return false
  end
    
end

# Part 3

class BookInStock
 attr_reader :isbn, :price
 def initialize(isbn, price)
   if !isbn.empty?
     @isbn = isbn
    else 
      raise ArgumentError, 'Invalid ISBN number'
    end
    
    if price <= 0
      raise ArgumentError, 'Invalid price'
    else
      @price = price
    end
    
  end
  
  def price_as_string
    return '$''%.2f' % @price
  end
  
  def isbn=(isb)
    @isbn= isb
  end
  
  def price=(pri)
    @price = pri
  end
  
end

