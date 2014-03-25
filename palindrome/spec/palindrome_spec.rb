require 'rspec/core'
require 'palindrome'

describe Palindrome do

  it "determines if a string is not a palindrome" do
    string = Palindrome.new
    expect(string.palindrome?("Apple")).to eq false
  end

  it "determines if a string is a palindrome" do
    string = Palindrome.new
    expect(string.palindrome?("Radar rAdaR")).to eq true
  end

end