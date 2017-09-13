#!/usr/bin/env ruby

class Words
  def initialize()
  end

  def to_lower(word)
    word.downcase()
  end

  def clean_word_to_char(word)
     #to_lower(word).gsub!(/[^abcdefghijklmnopqrstuvwxyz]/,'').chars()
     to_lower(word).gsub(/[^a-z]/,"").chars
  end

  def check_if_word?(word)
     puts clean_word_to_char(word)
     clean_word_to_char(word).include? ['a','e','i','o','u','y']

  end


  def check_palindrome?(word1, word2)
     clean_word_to_char(word1).reverse == clean_word_to_char(word2)
  end

  def check_annagram?(word1, word2)
        clean_word_to_char(word1).sort == clean_word_to_char(word2).sort
  end

  def check_antigram?(word1, word2)
      clean_word_to_char(word1).include? clean_word_to_char(word1) == false
  end





end
