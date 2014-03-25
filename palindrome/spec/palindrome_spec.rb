require 'rspec/core'
require 'palindrome'

describe Palindrome do
  before(:each) do
    @string = Palindrome.new
  end
  it "determines if a string is not a palindrome" do
    expect(@string.palindrome?("Apple")).to eq false
  end

  it "determines if a string is a palindrome" do
    expect(@string.palindrome?("Radar rAdaR")).to eq true
  end

end