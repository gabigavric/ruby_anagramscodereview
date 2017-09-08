require('rspec')
require('anagrams')

describe('#anagrams') do
  cats = Words.new('cat')
  it("Convert any uppercase letters to lowercase.") do
      expect(cats.convert_to_lowercase("Cat")).to(eq("cat"))
  end
end
