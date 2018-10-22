def correct_change

    puts "how much cash do you have?"

    input = gets.chomp
    
    cash_amount = input.to_i
    
    puts "how much does the item cost?"
    
    input = gets.chomp
    
    item_price = input.to_i

    change = (cash_amount) - (item_price)

    puts "You now have #{change} dollars"

end

correct_change