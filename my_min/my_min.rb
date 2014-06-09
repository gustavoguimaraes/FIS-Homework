def return_hash_key_with_lowest_value(hash)
  hash_values_array = []
  hash.collect do |key, value|
    hash_values_array << value
  end
  hash.key(hash_values_array.min)
end
