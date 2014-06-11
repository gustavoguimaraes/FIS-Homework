#Exercise on looping through hashes and arrays

require 'awesome_print'
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms .K"],
    :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms .K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms .K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def pigeon_list(pigeon_hash)
 pigeon = {}
    pigeon_hash.each do |attributes, hash_attributes|
      hash_attributes.each do | attributes2, array_name|
        array_name.each do |name|
          pigeon[name] = {} unless pigeon[name]
          pigeon[name][attributes] = [] unless pigeon[name][attributes]


            pigeon[name][attributes] << attributes2 if attributes == :color

            pigeon[name][attributes] = attributes2 if attributes != :color


        end
      end
    end
 ap pigeon
end

pigeon_list(pigeon_data)