Given("I have a data table") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  # table.raw converts the table into an array, including the column headers
  @data = table.rows # converts the table into an array EXCLUDING the column headers
end

Then("I am able to print out the data") do
  @data.each do |i|
    puts "#{i[0]} the goose has the role of #{i[1]}"
  end
end
