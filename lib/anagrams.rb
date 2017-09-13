#!/usr/bin/env ruby

class Words
  def initialize()
  end

  def to_lower(word)
    word.downcase()
  end

  def remove_spaces_to_char(word)
      to_lower(word).gsub(/\s+/, "").chars
  end

  def check_palindrome?(word1, word2)
        remove_spaces_to_char(word1).reverse == remove_spaces_to_char(word2)
  end

  def check_annagram?(word1, word2)
        remove_spaces_to_char(word1).sort == remove_spaces_to_char(word2).sort
  end

  def check_antigram?(word1, word2)
      remove_spaces_to_char(word1).include? remove_spaces_to_char(word1) == false
  end

end
