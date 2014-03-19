require 'rspec/core'
require 'bingo.rb'

describe Card do

  before { @new_card = Card.new }
  it "should generate a card with 5 arrays" do
    expect(@new_card.create_card).to eq [
                          [],
                          [],
                          [],
                          [],
                          [],
                       ]
  end
  it "should generate each column with a number within the appropriate number range" do
    @new_card.create_card
    @new_card.fill_card
    expect(@new_card.card[0][0].between?(1,15)).to eq true
    expect(@new_card.card[1][0].between?(1,15)).to eq true
    expect(@new_card.card[2][0].between?(1,15)).to eq true
    expect(@new_card.card[3][0].between?(1,15)).to eq true
    expect(@new_card.card[4][0].between?(1,15)).to eq true
    expect(@new_card.card[0][1].between?(16,30)).to eq true
    expect(@new_card.card[0][2].between?(31,45)).to eq true
    expect(@new_card.card[0][3].between?(46,60)).to eq true
    expect(@new_card.card[0][4].between?(61,75)).to eq true
  end
  it "automatically places an 'x' in the center of the card" do
    @new_card.create_card
    @new_card.fill_card
    expect(@new_card.card[3][2]).to eq "x"
  end

  it "allows a user to mark their card with an x in replacement of a called number" do
    @new_card.create_card
    @new_card.fill_card
    @new_card.card[0][0] = 1
    @new_card.mark_card(1)
    expect(@new_card.card[0][0]).to eq "x"
  end
  it "determines when a card has won bingo" do
    @new_card.create_card
    @new_card.fill_card
    @new_card.card[4][0] = "x"
    @new_card.card[4][1] = "x"
    @new_card.card[4][2] = "x"
    @new_card.card[4][3] = "x"
    @new_card.card[4][4] = "x"
    expect(@new_card.is_winner?).to eq true
  end
end


