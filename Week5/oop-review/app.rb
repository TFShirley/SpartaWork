require_relative "duck.rb"

duck1 = Duck.new "Frank", "gainsboro", "unit"
duck2 = Duck.new "Howard", "turquoise", "smol"

# duck1.desc
# duck2.desc
#
duck2.update_name "Stephanie"
# duck2.colour = "green"
duck2.desc

# puts Duck.names_of_ducks
