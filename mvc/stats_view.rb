require_relative 'stats_model'

class StatsView
    def greeting 
        puts "Kobe is the real MVC!"
    end
    def menu
        puts "1. Insert numbers"
        puts "2. List numbers"
        puts "3. Show average"
        puts "4. Quit"
        return gets.chomp.to_i
    end
    def read_numbers
        values = []
        puts "Please enter one number per line ('end' to end):"
        num = ''
        until num == 'end'
            num = gets.chomp
            values << num.to_i if num != 'end'
        end
        return values
    end
    def display_numbers(numbers)
        print numbers
        puts
    end

    def display_average(average)
        puts average
        puts
    end

    def goodbye
        puts "Lates!"
    end
end