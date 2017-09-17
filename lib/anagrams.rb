#!/usr/bin/env ruby

class Words

  def to_lower(word)
    word.downcase()
  end

  def clean_word(word)
     to_lower(word).gsub(/[^a-z]/,'')
  end

  def check_if_word?(word)
    clean_word(word).scan(/[aeiou]/).count > 0
  end


  def check_palindrome?(word1, word2)
     clean_word(word1).chars().reverse == clean_word(word2).chars()
  end

  def check_anagram?(word1, word2)
        clean_word(word1).chars().sort == clean_word(word2).chars().sort
  end

  def check_antigram?(word1, word2)
    !clean_word(word1).chars.any? { |i| clean_word(word2).chars.include? i }
  end


  def what_is_this_word(word1, word2)
    if !check_if_word?(word1)  || !check_if_word?(word2)
      'This is not a word.'
    elsif check_antigram?(word1, word2)
      'This is an antigram.'
    elsif check_palindrome?(word1, word2)
      'This is a palindrome.'
    elsif check_anagram?(word1, word2)
      'This is an anagram.'
    else
      'This is a word we don\'t know about'
    end


  end
end
