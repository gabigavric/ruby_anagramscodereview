require('rspec')
require('anagrams')
require('pry')

describe('#methodname') do

  it("Check inputed words for the following vouls: 'a', 'e', 'i', 'o', 'u'.")
    expect(("cat","lick")).to(eq("The inputed words contain vouls"))
  end

  it("Check to see if inputs are palindroms.") do
    expect(("bob", "bob")).to(eq("Your words are palindroms"))
  end

  it("Check to see if inputs are anagrams.") do
    expect(("cinema", "iceman")).to(eq("Your inputs are anagrams"))
  end

  it("Check to see if inputs are antigrams.") do
    expect(("hi","bye")).to(eq("Your inputs are antigrams"))
  end

  it("Check to see if a sentance is an anagram.") do
    expect(("nurses run")).to(eq("Your sentance is an anagram."))
  end

  it("Check to see if a sentance is an antigram.") do
    expect(("purses run")).to(eq("Your sentance is an antigram."))
  end



end

    # describe('#methodname') do
    #
    #   it("check to see if movie is an anagram") do
    #     expect(paperEx.wins("paper")).to(eq("Tie"))
    #   end
