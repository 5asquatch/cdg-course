#ГОТОВО?
class CashMachhine
def self.init
if File.exist? ("/home/sergey/balance")
    file = File.open("/home/sergey/balance")
    balance = File.read("/home/sergey/balance").to_i
else
    balance = BALANCE
end
puts "Choose operation: (D), (W), (B), (Q)"
input = gets.chomp
if input == 'd'
    deposit(file,balance)
elsif input == 'w' 
    puts "withdraw"
    withdraw(file,balance)
elsif input == 'b' 
    balance(file)
elsif input == 'q' 
    quit()
end
end

def self.deposit (file,balance)
    puts "Enter number to deposit:"
    number = gets.to_i
    if number > 0
        balance = File.write(file, balance + number) 
    else 
        puts "Number needs to be positive!"
    end
    file.close
end

def self.withdraw (file,balance)
    puts "Enter number to withdraw:"
    number = gets.to_i
    if number > 0
    balance = File.write(file, balance - number) 
    else 
        puts "Number needs to be positive!"
    end
    file.close
end

def self.balance (file)
    puts file.read
    file.close
end

def self.quit ()
    puts "quit"
    exit!
end

end

BALANCE = 100
CashMachhine.init