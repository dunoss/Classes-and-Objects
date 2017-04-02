class BankAccount

def self.accounts
  @@accounts
end


  @@accounts = []
  attr_reader :balance :interest_rate

  def initialize
    @balance = 0
    @interest_rate = 0.03
    @@accounts << self
  end
  # def balance
  #   @balance
  # end
  # def balance=(amount)
  #   @balance = amount
  # end
  def deposit(amount)
    @balance = @balance + amount
  end

  def withdraw(amount)
    if @balance - amount < 0
      puts insuf funds
    else
    @balance = @balance - amount
  end
  end

def gain_interest
  @balance = @balance * (1 + @interest_rate)
end


end

my_account = BankAccount.new

puts my_account.balance

my_account.deposit=(200)

puts my_account.balance

my_account.withdraw=(500)

my_account.gain_interest
