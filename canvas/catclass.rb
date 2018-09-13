# Build a Cat class.

# Each cat should have a name
# Implement a speak method to say meow.
# Add each cat's name to the speak method (Pixie says meow).

# Carrying on from our code along:

# We've got name and age, let's give each dog a location too. Test your location works by printing the dog's location.
# doggo = Dog.new('Rover', 2, 'Brisbane')
# puts doggo.location # -> Brisbane (You might get a no method error, remember attr_accessor?)

# Create a walk method. This should say "I have been for X walks.". Every time you call walk, the number should increase by one E.g:
# doggo = Dog.new(...)
# doggo.walk # -> I have been for 1 walks today
# doggo.walk # -> I have been for 2 walks today
# Update the walk method so it only increases the walk count. Create a new method to display walks. E.g.: doggo = Dog.new(...)
# doggo.walk # -> Shouldn't print anything on screen
# doggo.walk # -> Shouldn't print anything on screen
# doggo.display_walks # -> I have been for 2 walks today
# Update the walk method so you can chain walk commans. E.g.: doggo = Dog.new(...)
# doggo.walk.walk.display_walks # -> I have been for 2 walks today

class Cat
    attr_accessor :name, :walks, :location
    def initialize(name, walks, location)
        #@name is an instance variable, only accessible inside the class UNLESS accessors are used
        #accessors can be declared individually as getters(read data) and setters(write data)
        #classes can be accessed from separate files so long as they exist within the same directory
        #if a class needs to be accessed from a file in a different directory, you must use
        #REQUIRE './classdirectory' at the top/ beginning of the file
        @name = name
        @walks = walks
        @location = location
    end
    def speak
        puts "#{@name} says meow"
    end
    def walk
        @walks += 1
        self
    end
    def walks
        puts "I have been for #{@walks} walks"
    end
end



cat = Cat.new("Poto", 1, "Brisbane")
puts cat.name
cat.name = "Shadow"
cat.speak
cat.walk
cat.walk
cat.walk.walk
cat.walks
