#!/usr/bin/env ruby

class Words
  def initialize(input1, input2)
    @input1 = input1
    @input2 = input2
  end

  def to_lower(word)
    word.downcase()
  end

  def remove_spaces_to_char(word)
      to_lower(word).gsub(/\s+/, "").split(//)
  end

  def check_palindrome?()
        remove_spaces_to_char(word1).sort() == remove_spaces_to_char(word2).sort()
  end

  def check_antigrams?()
        remove_spaces_to_char(word1).reverse == remove_spaces_to_char(word2)
  end

end
