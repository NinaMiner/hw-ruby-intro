# Nina Miner
# CSCE 606 Fall 2020

# Part 1

def sum(array)
  #identify the zero case
    sum = 0
  #iterate over the array to find the sum of the array arguments
    array.each{|a| sum+=a}
    #print the sum of all ints
    return sum 
end

def max_2_sum(array)
  #use elsif loop to return accurate values for empty and single array conditions
  if array.length==0
    return 0
  elsif array.length ==1
    return array[0]
  end
  #print the sum of the largest two values following array sorting from smallest to largest
  sum(array.sort.last(2))
end

def sum_to_n?(array,n)
  #use hash combination function to find the sum of any two elements in the array where the two elements equal n 
  #use any? to find boolean for the function
  return array.combination(2).any? {|a,b|a+b==n}
end

# Part 2

def hello(name)
  #identify Hello statment
  h = "Hello, "
  #contatenate Hello with provided name
  h << name
end

def starts_with_consonant? s 
  #identify false functions
  #return false if !s or s.length==0
  #use start_with to identify if the name begins with a constonant provided in the listed array
  #/i to ignore case
  #Attempt 1 try the match operator for the first value in the string vs the array of constonants: 
  s[0]=~/[bcdfghjklmnpqrstvwxyz]+/i ? true : false
  #Attempt 2 use the stat_with method to compare the first values: s.start_with?(/![aeiou]*/i) ? true : false
  #Attempt 3 try the start with in a loop, different format:
  #if s.start_with?(/[aeiou]/i)
  # return false
  #else 
  #  return true
  #end
  #Attempt 4 try the start with for the constonants: s.start_with?(/[bcdfghjklmnpqrstvwxyz]/) ? true : false
end

def binary_multiple_of_4? s
  #Attempt 1: using the unpack, concatenate the values and %4
  if s.length==0 
    return false
  end
  #use unpack to decode the string returning each value of the string in binary
  #else for letter in s.unpack("c*") << letter
  #  end
  #end
  #use a loop/ternary operator to diferentiate between true (a multiple of 4) and false
  #letter%4 ==0 ? true : false
  
  #Attempt 2: use the to_i function to translate the string to an integer base 2
  bin = s.to_i(2)
  bin % 4 == 0 ? true : false
  
  #neither of these options validates a true binary, still confused as to how to accomplish this. Help needed!!
  
end

# Part 3

class BookInStock
  #attr_accessor automatically sets up getters and setters for each variable
  attr_accessor :isbn, :price
  #newBook = BookInStock.new
  #initialize the isbn/price
  #Attempt 2: add argument errors to initialization
  def initialize(i,pr)
    @isbn,@price = i,pr
    raise ArgumentError if isbn=="" || price<=0
  end
  #Attempt 1: 
  #raise the apropriate argument errors
  #def book(isbn, price)
  #  raise ArgumentError if isbn.length=0 || price<=0
  #end
  #setter functions
  def setisbn=(i)
    @isbn = i
  end
  def setprice=(pr)
    @price = pr
  end
  #getter functions
  def readisbn
    return @isbn
  end
  def readprice
    return @price
  end
  #format the price concatenating $ with 0.2 decimal float of price
  def price_as_string
    return "$" << "%0.2f" % price
  end
end
