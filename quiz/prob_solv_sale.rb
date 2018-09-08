#sale on shirts iron man, thor, hulk, captain america
#you can buy one shirt for $20. If you buy two different shirts you save 10% off the final price.
# if you buy three different shirts, you save 20% off the final price
# if you buy all four shirts, you save 25% off the final price

def sale
shirts = ["Iron Man", "Thor", "Hulk", "Captain America"]

end


puts "Class solution:"


def finalprice(all_shirts)
    price = 20
    unique_shirts = all_shirts.uniq # number of different shirts
    total_shirts = all_shirts.length
    final_price = total_shirts*price/unique_shirts
    all_shirts = gets.chomp
    puts final_price
end