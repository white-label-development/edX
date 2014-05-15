#Define a class BookInStock which represents 
#a book with an isbn number, isbn, and price of the book as a floating-point number, price, as attributes. 
#The constructor should accept the ISBN number (a string) as the first argument and price as second argument, 
#and should raise ArgumentError (one of Ruby's built-in exception types) 
#if the ISBN number is the empty string or if the price is less than or equal to zero.

#Include the proper getters and setters for these attributes. I
#nclude a method price_as_string that returns the price of the book 
#with a leading dollar sign and trailing zeros, that is, 
#a price of 20 should display as "$20.00" and a price of 33.8 should display as "$33.80".

class BookInStock
 def initialize(isbn, price)
 	@price = price.to_f 
    if @price <= 0
      raise ArgumentError.new('Invalid price')  
 	end

 	if isbn.empty? || isbn.to_s == nil
      raise ArgumentError.new('Invalid isbn')  
 	end

 	@isbn = isbn

 end


  attr_accessor :isbn #get;set;
  attr_accessor :price #get;set;

  def price_as_string
    return  "$" + '%.2f' % price
  end


end



#raise "ctor should raise an error if isbn is empty" unless BookInStock.new("",23) 
#raise "ctor should raise an error if price is <= zero" unless BookInStock.new("aaa",0) 
#raise "ctor should raise an error if isbn is empty" unless BookInStock.new("aaa","A")
raise "price_as_string should format price as a currency" unless BookInStock.new("aaa","23").price_as_string == "$23.00"
raise "property accessors should work" unless BookInStock.new("aaa","23").isbn== "aaa"



