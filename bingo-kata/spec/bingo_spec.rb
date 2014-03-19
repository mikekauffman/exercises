require 'rspec/core'
require 'bingo.rb'

describe Card do
  it "should generate a card with 5 arrays" do
    card = Card.new.create_card
    expect(card).to eq [
                          [],
                          [],
                          [],
                          [],
                          [],
                       ]
  end
end