class Palindrome

  def initialize
  end

  def palindrome?(sentence)
    clean_string = sentence.downcase
    clean_string == clean_string.reverse
  end

end
