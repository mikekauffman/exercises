require 'rspec'
require 'cash_reg.rb'

describe CashRegister do

  it "allows a total to be stored in the cash register" do
  cash_total = CashRegister.new(0)

  expected = 150
  actual = cash_total.purchase(150)
  expect(actual).to eq expected

  end
end