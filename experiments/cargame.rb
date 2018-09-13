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

def class Vehicle
    attr_accessor :make, :model, :capacity
    def initialize(make, model, capacity)
        @make = make
        @model = model
        @fuel_capacity = capacity
        @fuel = 50
    end
    def refuel(litres)
        if litres > @fuel_capacity
        @fuel = @fuel_capacity
        else
            @fuel += litres
        end
    end
end

# windows requires car class

def class Motorbike < Vehicle
    def wheelie
    end
end

Vehicle.new("Honda", "Civic")