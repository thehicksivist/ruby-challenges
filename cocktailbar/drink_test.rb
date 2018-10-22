require "test/unit"
require_relative "drinks.rb"
require_relative "constants.rb"

class DrinkTest < Test::Unit::TestCase

def setup
    #create and instance of the class each time a test is run
    @water = Water.new
    @beer = Beer.new
    @cocktail = Cocktail.new
end

def test_get_cost_water
    #compares the chosen value first against the selected value second
    assert_equal(WATER_COST, @water.cost) 
end

def test_get_price_water
    assert_equal(WATER_PRICE, @water.price)
end

def test_get_cost_beer
    assert_equal(BEER_COST, @beer.cost) 
end

def test_get_price_beer
    assert_equal(BEER_PRICE, @beer.price)
end

def test_get_cost_cocktail
    assert_equal(COCKTAIL_COST, @cocktail.cost) 
end

def test_get_price_cocktail
    assert_equal(COCKTAIL_PRICE, @cocktail.price)
end

end

