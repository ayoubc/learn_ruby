#write your code here
def echo(word)
    return word
end

def shout(word)
    return word.upcase
end

def repeat(word, n=2)
    str = ""
    n.times do |i|
        str += word
        if i != n-1
            str += " "
        end
    end
    return str
end

def start_of_word(word, n)
    return word[0..n-1]
end

def first_word(sentence)
    return sentence.split(" ")[0]
end

def titleize(sentence)
    words = sentence.split(" ")
    words.each do |word|
        if word.length > 4 
            word.capitalize!
        end
    end
    words[0].capitalize!
    words[-1].capitalize!
    return words.join(" ");
end