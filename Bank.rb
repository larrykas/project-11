class Account
def initialize(balance, name, account_number) 
 @balance = balance
 @name = name
 @account_number = account_number
 end

 def deposit(amount)
 @balance += amount
 end

 def withdraw(amount)
 @balance -= amount
 end
 
 def balance
 puts "Name: " + @name
 puts "Account number: " + @account_number.to_s 
 puts "Balance: " + @balance.to_s
 end

 def transfer(amount, target_account)
 @balance -= amount
 target_account.deposit(amount)
 end

 def status
 return @balance
 end
 end
