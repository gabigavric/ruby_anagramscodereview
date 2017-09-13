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

  it("check if word has vowels then its a word") do
      expect(new_instance1.check_if_word?("Cat"))
      expect(new_instance1.check_if_word?("Cbt")).to eq(false)
  end


  it("check to see if words are palindroms") do
      expect(new_instance1.check_palindrome?("Madam","madam"))
      expect(new_instance1.check_palindrome?("cat","Cat")).to eq(false)
  end

  it("check to see if words are annagrams") do
      expect(new_instance1.check_annagram?("evil","live"))
      expect(new_instance1.check_annagram?("tea","eat"))
      expect(new_instance1.check_annagram?("cat","hat")).to eq(false)
  end

  it("check to see if words are antigram") do
      expect(new_instance1.check_antigram?("evil","dog"))
      expect(new_instance1.check_antigram?("cat","hat")).to eq(false)
  end




end
