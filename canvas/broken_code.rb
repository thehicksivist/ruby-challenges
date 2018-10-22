# The following code is broken. The say method is incomplete. Complete the method to fix the code! Say should take one argument 
# (a message) and put it on the screen.

# def say
# end
# say('Hello')
# say('Welcome to my application!')

def say(string)
    puts "#{string}"
end
say('Hello')
say('Welcome to my application!')

# Implement the add method. It should take three numbers, add them together and return the result. Should puts be inside or outside 
# the method? Discuss.
# puts add(2,5,7)

def add(x, y, z)
    x + y + z
end

puts add(2, 5, 7)