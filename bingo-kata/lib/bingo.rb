class Card
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
end