#each, #map, #find, and #filter with arrays and hashes

#each
new_array = ["this", "is", "Ruby"].each do |str|
    p str.upcase
end
new_array

#map / #collect
p [1, 2, 3].map { |num| num * 2 }

users = [{name: "Duane", phone: "555-555-5555"}, {name: "Liza", phone: "555-555-5556"}]
users.map do |user|
    p "Name: #{user[:name]} | Phone: #{user[:phone]}"
end

p [1, 2, 3].collect { |num| num * 2 }

#filter / #select / #find_all
p [1, 2, 3, 4, 5].filter { |num| num.even? }

words = ["give", "it", nil, "your", nil, "best", "shot"]
words.filter do |word|
    if word != nil
       p word.capitalize
    end
end

words = ["give", "it", nil, "your", nil, "best", "shot"]
filtered_words = words.filter do |word|
  word != nil
end

capitalized_words = filtered_words.map do |word|
  p word.capitalize
end

#find / #detect
#find will only return the first one:
p [1, 2, 3, 4, 5].find { |num| num.even?}

users = [{ name: "Duane", phone: "555-555-5555"}, { name: "Liza", phone: "555-555-5556" }]
users.find do |user|
  puts user[:name] == "Liza"
end

#sort
nums = [1, 5, 3]
sorted_nums = nums.sort
p sorted_nums

users = [
    {name: "Liza", phone: "555-555-5556"},
    {name: "Duane", phone: "555-555-5555"},
    {name: "Cara", phone: "555-555-5556"}
]

sorted_users = users.sort do |user1, user2|
    if user1[:name] == user2[:name]
        0
    elsif user1[:name] < user2[:name]
        -1
    elsif user1[:name] > user2[:name]
        1
    end
end
p sorted_users

users.sort_by do |user1|
    user1[:name]
end