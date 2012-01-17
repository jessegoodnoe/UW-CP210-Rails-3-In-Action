class Account
  def balance=(amount)
    @balance = amount.to_i
  end
  
  def balance
    @balance
  end
end