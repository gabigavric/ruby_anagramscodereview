require('rspec')
require('anagrams')

describe('#anagrams') do
  word = Words.new()

  it("Convert any uppercase letters to lowercase.") do
    expect(word.to_lower("Cat")).to(eq("cat"))
  end

  it("remove whitespaces special char convert to lowercase") do
    expect(word.clean_word("Cat!")).to eq('cat')
  end


  it("check if word has vowels then its a word") do
    expect(word.check_if_word?("Cbt")).to eq(false)
  end


  it("check to see if words are palindroms") do
    expect(word.check_palindrome?("Madam", "madam")).to eq(true)
    expect(word.check_palindrome?("cat", "Cat")).to eq(false)
  end

  it("check to see if words are anagrams") do
    expect(word.check_anagram?("evil", "live")).to eq(true)
    expect(word.check_anagram?("tea", "eat")).to eq(true)
    expect(word.check_anagram?("cat", "hat")).to eq(false)
  end

  it("check to see if words are antigram") do
    expect(word.check_antigram?("evil", "dog")).to eq(true)
    expect(word.check_antigram?("poop", "poop")).to eq(false)
    expect(word.check_antigram?("cat", "hat")).to eq(false)
  end


  it("check to see what type of word it is a palindrome") do
    expect(word.what_is_this_word("Madam", "madam")).to(eq('This is a palindrome.'))
  end


  it("check to see what type of word it is") do
    expect(word.what_is_this_word("cbt", "tlc")).to(eq('This is not a word.'))
    expect(word.what_is_this_word("Madam", "madam")).to(eq('This is a palindrome.'))
    expect(word.what_is_this_word("eat", "tea")).to(eq('This is an anagram.'))
    expect(word.what_is_this_word("dog", "evil")).to(eq('This is an antigram.'))
    expect(word.what_is_this_word("loop", "poop")).to(eq('This is a word we don\'t know about'))
  end
end