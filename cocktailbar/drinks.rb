require_relative "constants.rb"

#name, cost, sellingprice
#getprice
#getcost

class Drink
    attr_accessor :name, :cost, :price
end

class Water < Drink
    def initialize
        @name = "Water"
        @cost = WATER_COST
        @price = WATER_PRICE
    end
end

class Beer < Drink
    def initialize
        @name = "Beer"
        @cost = BEER_COST
        @price = BEER_PRICE
    end
end

class Cocktail < Drink
    def initialize
        @name = "Cocktail"
        @cost = COCKTAIL_COST
        @price = COCKTAIL_PRICE
    end
end
