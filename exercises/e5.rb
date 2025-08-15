class Account
  @@account_no = 0

  def initialize(name, balance)
    @@account_no += 1
    @name = name
    @balance = balance
    @account_no = @@account_no
  end

  private
  def withdraw(amt)
    if self.balance-amt <= 0
      print 'You do not have sufficient balance'
      exit
    end
    self.balance -= amt
  end

  def deposit(account_no, amt)
    
end
