#!/usr/bin/env ruby

class Words < String
  def initialize(user_input)
    @user_input =  user_input


  end

  def convert(user_input)
    user_input = user_input.downcase()
    array.chars(user_input)
  end
end
