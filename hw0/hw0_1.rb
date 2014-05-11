# Define a method sum which takes an array of integers as an argument 
# and returns the sum of its elements. For an empty array it should return zero.

def sum(ints)
  sum_of_all = 0
  if ints.empty? 
    return 0 
  else
  	ints.each{|i| sum_of_all+=i}
  	sum_of_all
  end
end


#copying sam's TDD stylee
raise "An empty array should return zero" unless sum([]) == 0
raise "An empty array should return the sum of it's elements" unless sum([1,2,3,]) == 6
raise "An empty array should return the sum of it's elements" unless sum([1,2,3,4]) == 10
# Define a method max_2_sum which takes an array of integers as an argument 
#and returns the sum of its two largest elements. 
#For an empty array it should return zero. 
#For an array with just one element, it should return that element.



# Define a method sum_to_n? which takes an array of integers 
#and an additional integer, n, as arguments 
#and returns true if any two distinct elements in the array of integers sum to n. 
#An empty array or single element array should both return false.