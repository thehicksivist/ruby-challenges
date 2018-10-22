
#'@name' is an instance variable, only accessible inside the class UNLESS accessors are used
#accessors can be declared individually as GETTERS(read data) and SETTERS(write data)
#ACCESSORS DESCRIPTION BELOW
#classes can be accessed from separate files so long as they exist within the same directory
#if a class needs to be accessed from a file in a different directory, you must use
#REQUIRE './classdirectory' at the top/ beginning of the file

class Cat
    # assigns a symbol
    attr_accessor :name
    #initialize method requires the (variable)
    def initialize(name)
        @name = name
    end
    # GETTER for @name
    def name
        @name
    end
    # SETTER for @name
    def name=(name)
        @name = name
    end
    # just another method
    def speak
        puts "#{@name} says meow"
    end
end

cat = Cat.new("Poto")
puts cat.name
cat.name = "Shadow"
cat.speak

#ATTR_ACCESSOR EXPLAINED BELOW
class MyClass
    attr_accessor :variable_one, :variable_two
    def initialize(param_one, param_two)
      self.variable_one = param_one
      self.variable_two = param_two
    end
end

  new_instance = MyClass.new("one", "two")
  new_instance.variable_one = "new string"
  new_instance.variable_one
  # => "new string"
  new_instance.variable_two
  # => "two"

#SETTING A SYMBOL TO A VARIABLE
def this_method(thing)
  puts thing.inspect
end

 thing = :thing
 this_method(thing)

 #the above will print the symbol ':thing'