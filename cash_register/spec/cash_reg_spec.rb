require 'rspec'
require 'cash_reg.rb'

describe CashRegister do

  before { @transaction = CashRegister.new }

  it "allows a total to be stored in the cash register" do
    expect(@transaction.purchase(150)).to eq 150
  end
  it "allows a cash register to show the total amount owed" do
    @transaction.purchase(200)
    expect(@transaction.total).to eq 200
  end
  it "allows a cash register to determine amount of changed to provide" do
    @transaction.purchase(200)
    expect(@transaction.payment(250)).to eq 50
  end
end