for x in 1..5
  print "Enter your age: " 
 input = gets.chomp.to_i
  if input >= 18
      puts "Welcome to the Casino!"
  elsif input == 16
      puts "Sweet sixteen! But also..."
      puts "Sorry, you're too young!"
  else
      puts "Sorry, you're too young!"
  end
end
