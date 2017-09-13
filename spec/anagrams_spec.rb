require('rspec')
require('anagrams')

describe('#anagrams') do
  new_instance1 = Words.new("Cat","cat")  # not actually used in to_lower
                                          # expcts a parameter

  it("Convert any uppercase letters to lowercase.") do
      expect(new_instance1.to_lower("Cat")).to(eq("cat"))
  end
end
