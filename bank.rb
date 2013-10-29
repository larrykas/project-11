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
#######################################################################################################
 
Larry$ irb
irb(main):001:0> require './bank.rb'
=> true
irb(main):002:0> a = Account.new(0, "Steve", 011234)
=> #<Account:0x007fc04481e280 @balance=0, @name="Steve", @account_number=4764>
irb(main):003:0> a.balance
Name: Steve
Account number: 4764
Balance: 0
=> nil
irb(main):004:0> a.deposit(100)
=> 100
irb(main):006:0> a.withdraw(25)
=> 75
irb(main):007:0> b = Account.new(4000, "Jeron", 011235)
=> #<Account:0x007fc044851338 @balance=4000, @name="Jeron", @account_number=4765>
irb(main):008:0> b.balance
Name: Jeron
Account number: 4765
Balance: 4000
=> nil
irb(main):009:0> puts b.balance
Name: Jeron
Account number: 4765
Balance: 4000

=> nil
irb(main):010:0> a.transfer(50, b)
=> 4050
irb(main):011:0> b.balance
Name: Jeron
Account number: 4765
Balance: 4050

#######################################################################################################
