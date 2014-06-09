#hash= {:key1=>23, :key2=>42, :key3=>16}

# def my_min(hash)
#   hash_values = []
#   hash.collect do |key, value|
#     hash_values << value
#   end
#   hash.key(hash_values.min)
# end

def my_min(hash)
  min_array = []
  min = hash.values[0]
  i = 0
  loop do

    min_array << hash.values[i]
    min = min_array[i] if min_array[i] < min
    i += 1
    break if i == hash.length

  end
  hash.key(min)
end