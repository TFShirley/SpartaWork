
def say_hello i
  puts "Hello World! #{i}"
end
i = 0
# # Basic Loop
# loop do
#   # i++ does NOT work :C
#   i += 1
#   puts "the value of i is #{i}"
#   if i > 5
#     break
#   end
# end

# # While
# while i < 10
#   puts "the value of i is #{i}"
#   i += 1
# end

# # Do While
# begin
#   say_hello
#   i += 1
# end while (i < -1)

# # Each
# (1..5).each do |i|
#   say_hello i
# end
# some_words = ["this","is","an","array","of","words"]
# some_words.each_with_index do |dataitem, index|
#   puts "'#{dataitem}' is held at index #{index}"
# end
# person = {name: "tom", age: 22, city: "brum"}
# person.each do |v, k|
#   puts "the key is '#{k}' and its value is '#{v}'"
# end

# # For
# for i in 0...5
#   puts "#{i}"
# end
# array = []
# for letter in "a".."z"
#   array.push "#{letter}"
# end
# print array

# # Map (Same as each but applies it to a new array)
# reversed_words = some_words.map do |word|
#   word.reverse
# end
# print reversed_words

some_nums = [1,4,5,2,3,1,2,4]
# puts some_nums.sum
sum = some_nums.reduce 0 do |total, number|
  total + number
end
puts "Sum: #{sum}"

















# bottom text
