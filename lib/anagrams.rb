#!/usr/bin/env ruby

class Words
  def initialize(input1, input2)
    @input1 = input1
    @input2 = input2
  end

  def convert()
    word1 = @input1.downcase().split(//)
    word2 = @input2.downcase().split(//)

    word1.chars().sort()
    word2.chars().sort()

    word1.char.sort ==  word2.char.sort
  end
end
