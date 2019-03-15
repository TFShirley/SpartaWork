# # In Ruby, nil and false are false.
# # If
# if true
#   puts "the question was true"
# end
# # Else
# if true
# else
# end
#
# # Else if
# if true
# elsif true
# else
# end

# # "Switch" statements
# puts "what's your age?"
# age = gets.chomp.to_i
# case age
# when 5
#   puts "you're young"
# when 18
#   puts "have a beer!"
# when 40
#   puts "get to work!"
# when 60
#   puts "happy retirement"
# end

# # If then (is kinda like an if..? but no one uses them??)
# val = 6
# if (val == 10) then puts 'value is 10' else puts 'not 10' end

# # Ternary, a neato way to do if statements in a single line
# thing_to_check ? do_this_if_true : do_this_if_false

# # Unless; like an if statment that runs if the condition is false
num1 = 2
num2 = 3
# unless num1 == num2
#   puts "those aren't equal dude"
# end

# and   ->    &&
# or    ->    ||
# not   ->    !

if true || num1 > num2
  puts "it will never check the sizes of the 2 numbers"
end

if !false
  puts "it was true all along!!"
end
