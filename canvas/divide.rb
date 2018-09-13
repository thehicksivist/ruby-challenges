# This is a simple divider.
# Imagine the user tries to divide by zero
# Ruby will rightfully freak out and crash with a ZeroDivisionError
# Let's bring in some error handling to display a nice message.
#

class String
    def is_i?
       /\A[-+]?\d+\z/ === self
    end
end

def divide (dividend,divisor)
    quotient = dividend/divisor
end

class NonNumericArgumentError < StandardError
end

def is_num_check(input)
    input = (:gets.chomp.to_i)
    raise NonNumericArgumentError, "That is not a number!" if input.String.is_i?
end

puts "--------------------"
puts "--- Division App ---"
puts "--------------------"
retries = 3
begin
    begin
        is_num_check(true) # Fine
        is_num_check(false) # Error!

        puts "Give me a number"
        number1 = gets.chomp.to_i
        puts "Give me another number"
        number2 = gets.chomp.to_i
        answer = divide(number1,number2)
        print "#{number1} divided by #{number2} = "
        print "#{answer || "error"}"
        puts        

    rescue NonNumericArgumentError => e
        puts e.message
    end
rescue
    puts "Cannot divide by zero, start again"
    retries -= 1
    retry if retries > 0

end
#
# Code along challenge: if they hit an error, take them back to "give me a number"
/
class InvalidNameError < StandardError
end

def validate_name(name)
  name = name.strip # Trim whitespace
  raise InvalidNameError, "Name must not be empty" if name.empty?
  name
end

begin
  validate_name('Alice') # Fine
  validate_name('   ') # Error!
rescue InvalidNameError => e
  puts e.message # => Name must not be empty
end

/