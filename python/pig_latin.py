def translate(word_or_phrase):
    words_array = word_or_phrase.split(" ")
    pig_latin_words_array = []

    for word in words_array:
        vowels = ["a", "i", "e", "o", "u"]

        if word[:2] == "qu":
            word = word[2:] + "qu"

        if word[0] not in vowels:  # if first char is consonant
            if (word[1] + word[2] == "qu"):  # for 'square' test case
                word = word[3:] + word[:3]
            else:
                next_index = 1
                # while next letter is still a consonant
                while (word[next_index] not in vowels):
                    next_index += 1
                # move all consecutive consonants to end
                word = word[next_index:] + word[:next_index]

        word += "ay"
        pig_latin_words_array.append(word)

    return " ".join(pig_latin_words_array)
