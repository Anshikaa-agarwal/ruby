# frozen_string_literal: true

# Represents a bank account with basic operations like deposit, withdraw, and transfer.
class Account
  @@account_no = 0

  attr_reader :account_no, :name
  attr_accessor :balance

  def self.next_account_no
    @@account_no += 1
  end

  def initialize(name, balance)
    @name = name
    @balance = balance.to_f
    @account_no = Account.next_account_no
  end

  private

  def withdraw(amount)
    amount = amount.to_f
    if (balance - amount) <= 0
      puts 'You do not have sufficient balance'
      exit
    end
    balance -= amount
  end

  protected

  def deposit(amount)
    balance += amount.to_f
  end

  public

  def display
    puts "Account number: #{account_no}"
    puts "Account holder name: #{name}"
    puts "Account balance: #{balance.to_i}"
  end

  def transfer(account, amount)
    withdraw(amount)
    account.deposit(amount)
  end
end

if ARGV.empty?
  puts 'Please provide an input'
else
  customer1_data, customer2_data, transaction_data = ARGV

  name1, balance1 = customer1_data.split(':')
  name2, balance2 = customer2_data.split(':')
  _, amount = transaction_data.split(':')

  customer1 = Account.new(name1, balance1)
  customer2 = Account.new(name2, balance2)

  customer1.transfer(customer2, amount)

  customer1.display
  puts
  customer2.display
end