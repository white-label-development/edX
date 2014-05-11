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

def sum_to_n?(intArray, n)
  if intArray.empty? || intArray.length == 1 
  	return false
  end

  #there is prolly a better way to do this in Ruby, but for now a nested loop seems the way forward
  intArray.each do |i|  	
   	intArray.each do |j|
   	  if i == j ;next;end	
  	  sum = i + j
      if sum == n
      	 #puts "#{i} + #{j} = #{sum} = #{n}"
         return true 
      end
  	end
  end

  return false
end



raise "An empty array should return false." unless sum_to_n?([],0) == false
raise "A single element array should return false." unless sum_to_n?([23],0) == false
raise "Return true when any two distinct elements in the array of integers sum to n. " unless sum_to_n?([1,2,3,4,5,6,7],12) == true
raise "Return false when any two distinct elements in the array of integers fail to sum to n. [1]" unless sum_to_n?([-1,-2,3,4,5,-8], 12) == false
raise "Return false when any two distinct elements in the array of integers fail to sum to n. [2]" unless sum_to_n?([1,2,3,5,6],12) == false






