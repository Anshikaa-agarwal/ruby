class Account
  @@account_no = 0

  def initialize(name, balance)
    @@account_no += 1
    @name = name
    @balance = balance.to_i
    @account_no = @@account_no
  end

  private
  def withdraw(amt)
    amt = amt.to_i
    if (@balance - amt) <= 0
      print 'You do not have sufficient balance'
      exit
    end
    @balance -= amt
  end
  
  protected
  def deposit(amt)
    @balance += amt.to_i
  end
  
  public
  def display
    print "Account number: #{@account_no}\n"
    print "Account holder name: #{@name}\n"
    print "Account balance: #{@balance}\n"
  end

  def transfer(acc, amt)
    self.withdraw(amt)
    acc.deposit(amt)
  end
end

if ARGV.empty?
  print 'Please provide an input'
else 
  cust1, cust2, transaction = ARGV

  name1, amt1 = cust1.split(':')
  name2, amt2 = cust2.split(':')
  transfer, amt = transaction.split(':')

  c1 = Account.new(name1, amt1)
  c2 = Account.new(name2, amt2)

  c1.transfer(c2, amt)
  
  c1.display
  print "\n"
  c2.display
end