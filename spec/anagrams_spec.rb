require('rspec')
require('anagrams')
require('pry')

describe('#methodname') do

  it("Check inputed words for the following vouls: 'a', 'e', 'i', 'o', 'u'.")
    expect(("cat","cat")).to(eq("true"))
  end

  it("Check inputed words for the following vouls: 'a', 'e', 'i', 'o', 'u'.")
    expect(("ct","ct")).to(eq("false"))
  end

  it("Check to see if inputs are anagrams.") do
    expect(("cinema", "iceman")).to(eq("true"))
  end

  it("Check to see if inputs are anagrams.") do
    expect(("movie","movie" )).to(eq("false"))
  end

  it("Check to see if inputs are antigrams.") do
    expect(("hi","bye" )).to(eq("true"))
  end

  it("Check to see if inputs are antigrams.") do
    expect(("house","mouse" )).to(eq("false"))
  end

end

    # describe('#methodname') do
    #
    #   it("check to see if movie is an anagram") do
    #     expect(paperEx.wins("paper")).to(eq("Tie"))
    #   end
