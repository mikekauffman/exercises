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
        row.collect! { |number| (number == called_number) ? "x" : number }
      end
      if is_winner?
        puts "I WIN!"
      end
    end
  end

  def is_winner?
    if check_rows == true
      true
    elsif check_columns == true
      true
      #elsif check_diagonal
      # true
    else
      false
    end
  end

  def check_rows
    self.card.each do |row|
      if !(row & (1..75).to_a).any?
        return true
      end
    end
  end

  def check_columns
    5.times do |row_num|
      @results = []
      5.times do |col_num|
        @results << "x" if self.card[col_num][row_num] == "x"
      end
      if @results.count("x") == 5
        return true
      end
    end
  end
end