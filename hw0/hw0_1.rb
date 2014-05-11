# Define a method sum which takes an array of integers as an argument 
# and returns the sum of its elements. For an empty array it should return zero.

def sum(ints)
  ints.empty?? 0: 1
end


#copying sam's TDD stylee
raise "An empty array should return zero" unless sum([]) == 0

# Define a method max_2_sum which takes an array of integers as an argument 
#and returns the sum of its two largest elements. 
#For an empty array it should return zero. 
#For an array with just one element, it should return that element.

# Define a method sum_to_n? which takes an array of integers 
#and an additional integer, n, as arguments 
#and returns true if any two distinct elements in the array of integers sum to n. 
#An empty array or single element array should both return false.