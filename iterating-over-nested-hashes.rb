jon_snow = {
    name: "john",
    email: "jon_snow@thewall.we"
}

jon_snow.each do |key, value|
    puts "Key: #{key}"
    puts "Value: #{value}"
end

contacts = {
    "Jon Snow" => {
        name: "Jon",
        email: "jon_snow@thewall.we",
        favourite_ice_cream_flavors: ["chocolate", "vanila", "mint chip"],
        knows: nil
    },
    "Freddy Mercury" => {
        name: "Freddy",
        email: "freddy@mercury.com",
        favourite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
}

contacts.each do |person, data|
    puts "#{person}: #{data}"
end

contacts.each do |person, data|
    #at this level, "person" is Jon Snow or Freddy Mercury and "data" is a hash of
    #key/value pairs to iterate over the "data" hash, we can use the following line:

    data.each do |attribute, value|
        puts "#{attribute}: #{value}"
    end
end

contacts.each do |person, data|
    #at this level, "person" is Jon Snow or Freddy and "data" is a hash of
    #key/value pairs to iterate over the "data" hash, we can use the following
    #line:

    data.each do |attribute, value|
        #at this level, "attribute" describes the key of :name, :email,
        #:favorite_ice_cream_flavors, or :knows we need to first check and see if
        #the key is :favorite_ice_cream_flavors, if it is, that means the VALUE is
        #an array that we can iterate over to print out each element

        if attribute == :favourite_ice_cream_flavors
            value.each do |flavor|
                # here, each index element in an ice cream flavor string
                puts "#{flavor}"
            end
        end
    end
end

#collecting their email eddresses in an array
emails = [] 

contacts.each do |person, data|
    data.each do |attribute, value|
        if attribute == :email
            emails << value
        end
    end
end
p emails

# this method returns a hash, which you can pass to the remove_strawberry method:
 
def remove_strawberry(contacts)
    contacts.each do |person, contact_details_hash|
        if person == "Freddy Mercury"
            contact_details_hash.each do |attribute, data|
                if attribute == :favorite_ice_cream_flavors
                data.delete_if {|ice_cream| ice_cream == "strawberry"}
                end
            end
        end
    end
end
  
# print the output to the terminal for inspection
pp remove_strawberry(contacts)