require 'pry'
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  new_hash = {}
  #create an array of unique names
  pigeon_names = data.collect do |key, value|
      key.values 
    end
    pigeon_names.flatten.uniq
 
  pigeon_names.each {|name| new_hash[name] = {}}
  
  data.each do |key, value|
    new_hash.each do |name, hash|
      new_hash[name][key] = []
    end
  end
  
  data.each do |key, value|
    value.each do |category, array|
      array.each do |name|
       new_hash[name][key] << category.to_S
     end
   end 
 end
    #return the newly built hash
  new_hash
end