# Define a method hello(name) that takes a string representing a name and returns the string "Hello, " 
# concatenated with the name.

# Define a method starts_with_consonant?(s) that takes a string and returns true 
#if it starts with a consonant and false otherwise. 
#(For our purposes, a consonant is any letter other than A, E, I, O, U.) 
#NOTE: be sure it works for both upper and lower case and for nonletters!

def hello(name)
  return "Hello, #{name}"
end

raise "Return name in the formatted string" unless hello('bob') == "Hello, bob"


#yuk. I have a lot to learn.
def starts_with_consonant?(s)
  vowels = ["a","e","i","o","u"]
  
  vowels.each{ |v|   	
    if s[0].casecmp(v) == 0
    	return false
    end
  }

  return true
end

raise "Return false if s does not start with a consonant (is a vowel)" unless starts_with_consonant?("e") == false 
raise "Return false if s does not start with a consonant (is a vowel)" unless starts_with_consonant?("E") == false 