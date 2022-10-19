upcased = ["this", "is", "Ruby"].map do |str|
    p str.upcase
end
upcased

10.times do |i|
    puts "i is: #{i}"
end

["this", "is", "Ruby"].map.with_index do |str, index|
    if index.even?
        p str.upcase
    else
        str
    end
end

book = {title: "The Hobbit", author: "J. R. R. Tolkien", published: 1937}
book.each do |key, value|
    puts "Key: #{key}"
    puts "Value: #{value}"
end

# Key: title
# Value: The Hobbit
# Key: author
# Value: J. R. R. Tolkien
# Key: published
# Value: 1937