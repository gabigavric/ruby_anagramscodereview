require('rspec')
require('anagrams')
require('pry')

describe('#methodname') do

  it("Check inputed words for the following vouls: 'a', 'e', 'i', 'o', 'u'.")
    expect(("cat","lick")).to(eq("The inputed words contain vouls"))
  end

  it("Check inputed words for the following vouls: 'a', 'e', 'i', 'o', 'u'.")
    expect(("ct","ct")).to(eq("The inputed words do not contain vouls"))
  end

  it("Check to see if inputs are palindroms.") do
    expect(("bob", "bob")).to(eq("Your words are palindroms of eachother"))
  end

  it("Check to see if inputs are palindroms.") do
    expect(("bob","rob")).to(eq("Your words are not palindroms of eachother"))
  end

  it("Check to see if inputs are anagrams.") do
    expect(("cinema", "iceman")).to(eq("Your words are anagrams of eachother"))
  end

  it("Check to see if inputs are anagrams.") do
    expect(("movie","movie")).to(eq("Your words are not anagrams of eachother"))
  end

  it("Check to see if inputs are antigrams.") do
    expect(("hi","bye")).to(eq("true"))
  end

  it("Check to see if inputs are antigrams.") do
    expect(("house","mouse")).to(eq("false"))
  end

  it("Check to see if a sentance is an anagram.") do
    expect((" ")).to(eq("true"))
  end

  it("Check to see if a sentance is an anagram.") do
    expect((" ")).to(eq("false"))
  end

  it("Check to see if a sentance is an antigram.") do
    expect((" ")).to(eq("true"))
  end

  it("Check to see if a sentance is an antigram.") do
    expect((" ")).to(eq("false"))
  end



end

    # describe('#methodname') do
    #
    #   it("check to see if movie is an anagram") do
    #     expect(paperEx.wins("paper")).to(eq("Tie"))
    #   end
