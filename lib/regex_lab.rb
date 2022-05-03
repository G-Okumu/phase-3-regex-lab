def starts_with_a_vowel?(word)
    rgex = /\b[aeiouAEIOU]\w+/
    if word.match(rgex)
         true
    else 
        false
    end
end

def words_starting_with_un_and_ending_with_ing(text)
    rgex = /\bun\w+ing\b/
    text.scan(rgex)
end

def words_five_letters_long(text)
    rgex = /\b\w{5}\b/
    text.scan(rgex)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    rgex = /^[A-Z].+[\.!?]$/
    if text.match(rgex)
        true
    else
        false
    end

end

def valid_phone_number?(phone)
    rgex = /([0-9] *){10}|(\([0-9]{3}\)(([0-9]{3}-[0-9]{4})|[0-9]{7})\b)/
    phone.match(rgex) ? true : false
end
