require_relative "person"

person1 = Person.new("Frank", "Male", 27, 2.00, 85.00)
person2 = Person.new("Alice", "Female", 45, 1.5, 50.00)

puts person1.desc
puts person2.desc
