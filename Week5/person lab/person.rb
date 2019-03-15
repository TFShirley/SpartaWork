class Person

    def name
        # create a name variable
        name = "Steve"
    end

    def age
        # create age variable here
        age = 22
    end

    def children
        # create children array here
        children = ["alan", "bob", "chris", "dan"]

    end

    def address
        # create address hash here
        address = {
          house_number: 45,
          street: "Monkspath",
          town: "Solihull",
          county: "West Milands",
          postcode: "SA1 4JN",
          email_addresses: ["steve@stevemail.com", "stevespam@stevemail.com"]
        }
    end

    def password
        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }

        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}"
    end

end
