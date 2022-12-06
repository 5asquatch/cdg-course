def cser (word)
    if word =~ /cs$/
        puts 2 ** word.length 
    else
        puts word.reverse
    end
end

word = gets.to_s
cser (word)
