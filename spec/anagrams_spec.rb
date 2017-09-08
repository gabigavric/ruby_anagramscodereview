require('rspec')
require('anagrams')

describe('#anagrams') do
  new_instance1 = Words.new('user_input')

  it("Convert any uppercase letters to lowercase.") do
      expect(new_instance1.convert("Cat")).to(eq("cat"))
  end

  it("Push user input into an array.") do
      expect(new_instance1.convert("cat", "hat")).to(eq["cat, hat"])
  end
end
