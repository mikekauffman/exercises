class Card
  attr_accessor :card

  def initialize(*card)
    @card = card
  end

  def create_card
    @card = [
      [],
      [],
      [],
      [],
      [],
    ]
  end

  def fill_card
    self.card.each do |row|
      row << rand(1..15)
      row << rand(16..30)
      row << rand(31..45)
      row << rand(46..60)
      row << rand(61..75)
    end
    card[3][2] = "x"
  end
  def mark_card(called_number)
    self.card.each do |row|
      if row.include?(called_number)
        row.collect! {|number| (number == called_number) ? "x" : number }
      end
    end
  end
end