my_variable = 5.0
# second_num = 12
# # ruby commonly uses snakescript in variable names
#
# p my_variable.to_s.class
# # .to_s turns a variable into a string, .to can be used for other conversions too
# # .class returns the type of variable
#
# puts my_variable + second_num
#
# first_name = "tom"
# last_name = "Shirley"
# eye_colour = "brown"
# age = 22.50
#
# puts first_name.upcase
# puts last_name.downcase
# puts "my name is #{first_name.capitalize}"
# puts last_name.reverse
#
# puts "my name is #{first_name.capitalize} #{last_name.capitalize}, I'm #{age.floor} and I have #{eye_colour} eyes."

array = ["apple", 12, [4,["word", "heya!"]], "Tom"]

# puts array[2][1][1]
# puts array[-1] # Negatives count backwards from the last element
# puts array.length

# array.push "orange"
# print array

# print array
# first = array.shift
# puts first
# print array

# puts my_variable.methods

#JSON
person = {
  name: "tom",
  age: 22,
  eye_colour: "brown"
}

#Hash Rockets
person2 = {
  :name => "tom",
  :age => 22,
  :eye_colour => "brown"
}

person[:city] = "birmingham"
puts person

letters = "qwertyuiop"
letters.reverse
puts letters
puts letters.reverse
