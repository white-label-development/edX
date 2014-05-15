# Define a method hello(name) that takes a string representing a name and returns the string "Hello, " 
# concatenated with the name.


def hello(name)
  return "Hello, #{name}"
end

raise "Return name in the formatted string" unless hello('bob') == "Hello, bob"


# Define a method starts_with_consonant?(s) that takes a string and returns true 
#if it starts with a consonant and false otherwise. 
#(For our purposes, a consonant is any letter other than A, E, I, O, U.) 
#NOTE: be sure it works for both upper and lower case and for nonletters!

# yuk. I have a lot of syntax to learn, this version is so clumsy!
# Redo as a regExp - it would be much much shorter.
# on the plus, this bad example shows why we use regExp in the first place!
def starts_with_consonant_BADEXAMPLE?(s)
  if s.empty? || s.to_s == nil 
  	return false
  end

  vowels = ["a","e","i","o","u"]
  
  vowels.each{ |v|   	
    if s[0].casecmp(v) == 0
    	return false
    end
  }

  return true
end

def starts_with_consonant? s
  !!(s[0] =~ /[bcdfghjklmnprstvwxyz]/i)
end

raise "Return false if s does not start with a consonant (is a vowel)" unless starts_with_consonant?("e") == false 
raise "Return false if s does not start with a consonant (is a vowel)" unless starts_with_consonant?("E") == false 
raise "Return false if s does not start with a consonant (is a vowel)" unless starts_with_consonant?("") == false 
raise "Return false if s does not start with a non-letter" unless starts_with_consonant?("#arse") == false 





# Define a method binary_multiple_of_4?(s) 
# that takes a string and returns true if the string represents a binary number that is a multiple of 4. 
# NOTE: be sure it returns false if the string is not a valid binary number!

def binary_multiple_of_4?(s)
  if s =~ /^[0-1]+$/  	
    return s.to_i(2) % 4 == 0 
  end
  false
end


raise "Return false if the string is not 1 || 0" unless binary_multiple_of_4?("3") == false
raise "Return true if the string is 1 || 0 (repeated) and a multiple of 4" unless binary_multiple_of_4?("100") ==true
raise "Return true if the string is 1 || 0 (repeated )and a multiple of 4" unless binary_multiple_of_4?("1000") ==true



