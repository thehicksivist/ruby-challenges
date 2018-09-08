
    puts "Please enter the temperature in degrees celcius:"
    celcius = gets.chomp.to_i
    puts "You have entered #{celcius} degrees celcius"
    puts "Would you like to convert this to fahrenheit? (press y/n)"
    input = gets.chomp
    if input == "y"
        F = celcius.to_i * (9 / 5) + 32
        puts "The temperature #{celcius} degrees celcius is #{F} degrees farhenheit"
    else quit
    end  

    puts "what is the temperature in celcius?"
    celcius = gets.chomp
def convert_to_fahrenheit(celcius)
    F = C * (9 / 5) + 32
end



