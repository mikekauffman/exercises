class CashRegister
  def initialize(starting_total)
    @total = starting_total

  end

  def purchase(price)
    purchase_total = @total + price

    purchase_total
  end

end