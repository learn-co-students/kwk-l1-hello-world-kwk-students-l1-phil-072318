class Elements
  
  def initialize(name = "unknown", abbreviation = "unknown", mass = 0, number = 0)
    @name = name
    @abbreviation = abbreviation
    @mass = mass
    @number = number
  end
  
  def return_name
    @name
  end
  
  def return_abbreviation
    @abbreviation
  end
  
  def return_mass
    @mass
  end
  
  def return_number
    @number
  end
  
  def reset_name=(new_name)
    @name = new_name
  end

tin = Elements.new("Tin", "Sn", 118, 50)
puts tin.return_name
tin.reset_name = "Not Tin"
puts tin.return_name





# class Animals                                       # Make an attribute method by using the keyword 'accesor'.
  
#   attr_accessor :name                               # Return and overwrite.
  
#   def initialize(name, type, age)
#     @name = name
#     @type = type
#     @age = age
#   end
  
#   def happy_birthday
#     @age = 1
#     puts "Happy #{@age} birthday, #{@name}!"
#   end
  
# end

# sparky = Animals.new("Sparky", "Otter", 8)
# tigger = Animals.new("Tigger", "Tiger", 4)

# sparky.happy_birthday
# tigger.happy_birthday

# # sparky.age = 9                                      # This is how to use the 'attr_accessor' return portion.
# # puts sparky.age