require('rspec')
require('anagrams')

describe('#anagrams') do
  new_instance1 = Words.new()

  it("Convert any uppercase letters to lowercase.") do
      expect(new_instance1.to_lower("Cat")).to(eq("cat"))
  end

  it("remove whitespaces convert to lowercase chars") do
      expect(new_instance1.remove_spaces_to_char("Cat")).to eq(['c','a','t'])
  end

  it("check to see if words are palindroms") do
      expect(new_instance1.check_palindrome?("Madam","madam"))
      expect(new_instance1.check_palindrome?("cat","Cat")).to eq(false)
  end



end
