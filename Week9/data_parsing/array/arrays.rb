dragons_array = ["charizard", "drogon", "fluffy", "toothless", "niv"]

# Access Charizard
dragons_array[0]
dragons_array.first

# Access Niv
dragons_array.last
dragons_array[4]
dragons_array[-1]

# Access dragon
for i in 0..10 do
  puts dragons_array.sample
end

# 2D array
dragons_and_rating_array = [["charizard", 6], ["drogon", 2], ["fluffy", 10], ["toothless", 8], ["niv", 7]]

# Drogon's Rating
puts dragons_and_rating_array.sample.last
