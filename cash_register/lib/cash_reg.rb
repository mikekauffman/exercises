class CashRegister
  def initialize(starting_total=0)
    @total = starting_total

  end

  def purchase(price)
    @total = @total + price
    @total
  end
  def total
    @total
  end

  def payment(money)
    money - @total
  end

end