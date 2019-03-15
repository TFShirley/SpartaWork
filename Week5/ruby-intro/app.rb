# require "mac/say"
# require "faker"
# # use "require" to link a gem
#
# # puts "hello world!"
# # # "puts" prints everything and leaves a line break
# # print "hello world..."
# # # "print" just prints everything without a line break
# # p "hello world?"
# # # "p" is kinda the same as puts but it prints literally
#
# name = Faker::Pokemon.name
# #
# # number = 12
#
#
# # puts "hello name"
# # puts "hello #{name}"
# # puts 'hello #{name}' # single quotes interprets the whole line as a string
# # # interpolate using #{} it allows you to target variables
#
# Mac::Say.say "I choose you, #{name}!"
# talker = Mac::Say.new(voice: :bruce, rate: 300)

p 'Gis a number will ya?'
# Chomp gets rid of the last keystroke, so in this case the enter key.
number = gets.chomp.to_i

p "#{number}? That's not NEARLY big enough!"
