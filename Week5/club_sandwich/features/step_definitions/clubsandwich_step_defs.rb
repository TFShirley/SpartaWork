Given("I am on the Club Sanwich index page") do
  visit('/')
end

When("I click Make your own") do
  click_link('Make your own')
end

Then("I should be redirected to the Make a Sanwich page") do
  sleep 1
  expect(clubsandwich.current_url).to eq 'http://localhost:9292/new'
end

Given("I am on the Make your own page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter a name for my sandwich") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter a description for my sandwich") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click Save Sanwich") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be redirected and my sandich should be on the main page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am on the Club Sandwich index page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("There are more than zero sandwiches on the page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on a sandwich") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be redirected to that sandwich's page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am currently viewing a sandwich that exists in the database") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click Edit Sandwich") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be redirected to that sandwich's edit page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am currently viewing a sandwich's edit page that exists in the database") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I make changes to the name of the sandwich") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I make changes to the description of the sandwich") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be redirected to the main page, which should display the updated sandwich") do
  pending # Write code here that turns the phrase above into concrete actions
end
