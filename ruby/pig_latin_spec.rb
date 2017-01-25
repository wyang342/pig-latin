require_relative "pig_latin"

puts "translates a word beginning with a vowel: #{translate("apple") == "appleay"}"
puts "translates a word beginning with a consonant: #{translate("banana") == "ananabay"}"
puts "translates a word beginning with two consonants: #{translate("cherry") == "errychay"}"
puts "translates two words: #{translate("eat pie") == "eatay iepay"}"
puts "translates a word beginning with three consonants: #{translate("three") == "eethray"}"
puts "counts 'sch' as a single phoneme: #{translate("school") == "oolschay"}"
puts "counts 'qu' as a single phoneme: #{translate("quiet") == "ietquay"}"
puts "counts 'qu' as a consonant even when it's preceded by a consonant: #{translate("square") == "aresquay"}"
puts "translates many words: #{translate("the quick brown fox") == "ethay ickquay ownbray oxfay"}"

# write a test asserting that capitalized words are still capitalized
# (but with a different initial capital letter, of course) retain the
# punctuation from the original phrase
