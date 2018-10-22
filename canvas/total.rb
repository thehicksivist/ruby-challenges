# 1 Create a method `total` that takes two numbers and returns their sum.

# puts total(4,4) # -> 8 

# 2 Adjust your method so you can yield blocks. I.e. when you're done, the following code should work:

# total(4,4) do |addition_total|
#   puts "Addition total is #{addition}"
# end

# 3 Update your method so you can access subtraction_total in your block too. I.e. when you're done, the following code should work:

# total(4,4) do |addition_total, subtraction_total|
#   puts "Addition total is #{addition_total}" # -> 8
#   puts "Subtraction total is #{subtraction_total}" # -> 0
# end

def total(x, y)
    addition_total = x + y
    subtraction_total = x - y
end

total(4,4) do |addition_total, subtraction_total|
    puts "Addition total is #{addition_total}"
    puts "Addition total is #{subtraction_total}"
end
