# Define a method sum which takes an array of integers as an argument 
# and returns the sum of its elements. For an empty array it should return zero.

def sum(ints)
  sum_of_all = 0  
  ints.each{|i| sum_of_all+=i}
  sum_of_all 
end


#copying sam's TDD stylee
raise "An empty array should return zero" unless sum([]) == 0
raise "An empty array should return the sum of it's elements" unless sum([1,2,3,]) == 6
raise "An empty array should return the sum of it's elements" unless sum([1,2,3,4]) == 10

#there is a sexier way of summing the array using array.inject(:+) - buts lets walk before we run.

# Define a method max_2_sum which takes an array of integers as an argument 
#and returns the sum of its two largest elements. 
#For an empty array it should return zero. 
#For an array with just one element, it should return that element.
def max_2_sum(intArray)
  sum = 0
  if intArray.length == 1
  	sum = intArray[0]
  else
  	intArray.sort!.reverse!
  	sum = intArray[0].to_i + intArray[1].to_i
  end
  return sum
end


raise "An empty array should return zero" unless max_2_sum([]) == 0
raise "For an array with just one element, it should return that element." unless max_2_sum([99]) == 99
raise "For an array with just more than one element, it should return the sum of its two largest elements." unless max_2_sum([100,1,2,3,4,50]) == 150

# Define a method sum_to_n? which takes an array of integers 
#and an additional integer, n, as arguments 
#and returns true if any two distinct elements in the array of integers sum to n. 
#An empty array or single element array should both return false.