#write your code here
def translate(sentence)
    h = {'a'=>1, 'e'=>1, 'u'=>1, 'i'=>1, 'o'=>1}
    words = sentence.split(" ")
    new_words = Array.new
    words.each do |word|
        i = 0
        suffix = ""
        while h[word[i]] == nil && i < word.length
            suffix += word[i]
            i += 1
            if i < word.length && word[i-1]=='q' && word[i] == 'u'
                suffix += word[i]
                i += 1
            end
        end
        new_words.push(word[i..word.length-1] + suffix + "ay")
    end

    return new_words.join(" ")
end