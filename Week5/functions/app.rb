# Functions in Java are defined like this:
# function say_hello(){
#   console.log("Hello")
# }

# This is how functions are defined in Ruby; with "def" and "end"
def say_hello name
  puts "Hello #{name}"
end

def say_bye name
  puts "LAAAATERRRRRR #{name}"
end

def add_nums num1, num2=4
  # Ruby by default will RETURN the last line of code; no need to type "return"
  return num1 + num2
  puts "You won't see this string! WAhahaha"
  # Return ENDS THE FUNCTION; code afterward is not run
end

def create_user name, course="eng23", location
  puts "#{name} is on #{course} in #{location}"
end

# Splat (*)
def say_some_words *words
  puts words
end
# say_some_words "hello", "we", "have", "some", "words!"

# Can only handle ONE splat at a time; doesn't know where it starts & ends.
# Multiple splats require multiple functions.
def students course, *people, location
  people.each do |person|
    puts "#{person} is on #{course} in #{location}"
  end
end

# students "eng23", "Ash", "CJ", "Abdul", "Milly", "Tom", "Brum"


# Functions must be called after they are defined; they cannot be hoisted
# say_hello "rude dude"

# If a function is expecting inputs and has a default value for one of them,
# but there are only two inputs, the function fills in the non-default values
# with the corresponding inputs while leaving the default value as is.
# create_user "tommo", "spaghetti"

# add_nums 2
# add_nums 3,9

puts add_nums 3, 45
