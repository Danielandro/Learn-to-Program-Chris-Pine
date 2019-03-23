contact_data = [
                ["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
                ]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contact_field = [:email, :address, :phone]

#loop over contacts hash, taking the key & value
contacts.each do |name, hash| 
#looping over array of fields to be added to each hash
  contact_field.each do |field|
#set field in hash. Remove item from original array
    hash[field] = contact_data.first.shift
  end
#delete empty array so there is a new first array
  contact_data.shift
end 

p contacts