password = "opensesame"
balance = File.open('balance.txt', 'r') {|file| file.readline}.to_i

puts "Please enter your password:"
input = gets.chomp

if input == "#{password}"
  puts
  puts "~~~<-Welcome to PBC: The Poor Banking Corporation->~~~"

  transactions = []

  loop {
    puts
    puts "What would you like to do? (Options: balance, deposit, withdraw, history, exit)"
    input = gets.chomp
    puts
    if input == "balance"
      puts
      puts "Your balance is $#{balance}"
      transactions << "balance check, balance = $#{balance}"
      puts
    elsif input == "deposit"
      puts "How much would you like to deposit?"
      input = gets.chomp
      if input.to_i > 0
        balance += input.to_i
        puts
        transactions << "deposit of $#{input.to_i}, balance = $#{balance}"
        puts "Your balance is now $#{balance}"
        puts
      else
        puts "have fun with that"
      end
    elsif input == "withdraw"
      puts
      puts "How much would you like to withdraw?"
      input = gets.chomp
      puts
      if input.to_i <= balance
        balance -= input.to_i
        puts
        transactions << "withdrawal of $#{input.to_i}, balance = $#{balance}"
        puts "Your balance is now $#{balance}"
        puts 
      else
        puts
        puts "Not enuff munniez!"
        puts
      end
    elsif input == "history"
      puts "Transaction History:"
      for transaction in transactions do
        puts transaction
      end
      puts
    elsif input == "exit"
      File.open('balance.txt', 'w') { |b| b.puts balance}
      puts
      puts "~~~<-kthxbai!->~~~"
      break
    else 
    puts "Invalid option!"
    puts
    end
  }
else 
    puts "Invalid Password!"
    puts
end