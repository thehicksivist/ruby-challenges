# # INHERITANCE CHALLENGE
# Implement a Vehicle class. It should accept make and model properties when you create an object. 
# E.g. civic = Vehicle.new("Honda", "Civic") 

# Implement a Car class. It should inherit from Vehicle.
# E.g. civic = Car.new("Honda", "Civic")

# Implement a Motorbike class. It should also inherit from Vehicle.
# E.g. low_rider = Motorbike.new("Harley Davidson", "Low Rider") 

# Implement the following methods, but first, device where they should live.
# refuel (should take one argument: litres)
# wheelie (should display a message)
# wind_up_windows (should display a message)
# fuel_level (should display total litres in the tank)

class Vehicle
    attr_accessor :make, :model, :capacity
    def initialize(make, model, capacity)
        @make = make
        @model = model
        @fuel_capacity = capacity
        @fuel_level = 50
        puts "fuel level is #{@fuel_level}"
        @windows_up = true
    end
    def refuel(litres)
        if litres > @fuel_capacity
            @fuel_level = @fuel_capacity
            puts "tank full"
        else
            @fuel_level += litres
            puts "#{litres}L of fuel added"
        end
    end
    
end

class Car < Vehicle   
    def wind_windows
        if @windows_up == true
            puts "windows down!"
            @windows_up = false;
        else
            puts "windows up!"
            @windows_up = true
        end
    end
end

class Motorbike < Vehicle
    def wheelie
        puts "Wheeeeelliiiieeeee!"
        @fuel_level -= 20
    end
end

honda_civic = Car.new("Honda", "Civic", 150)
low_rider = Motorbike.new("Yamaha", "150z", 50)

honda_civic.wind_windows
low_rider.wheelie
honda_civic.wind_windows
low_rider.refuel(25)
honda_civic.refuel(50)