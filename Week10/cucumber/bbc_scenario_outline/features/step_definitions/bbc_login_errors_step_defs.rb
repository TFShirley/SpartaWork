Given("I am on the BBC home page") do
  bbc_homepage.visit_homepage
  expect(bbc_homepage.current_url).to eq 'https://www.bbc.co.uk/'
end

Given("I move to the sign in page") do
  bbc_homepage.click_sign_in
  expect(bbc_homepage.current_url).to eq 'https://account.bbc.com/signin'
end

When("I proceed to register") do
  bbc_sign_in_page.click_register_link
end

When("I select I am over {int}") do |int|
  bbc_register_page.select_over_thirteen
end

When("I input my DOB") do
  bbc_register_page.enter_DOB(23, 'october', 1996)
  bbc_register_page.click_next_button
  sleep 5
end

When(/^I input the necessary details with the password details (.*)$/) do |password|
  bbc_register_page.fill_in_email
  bbc_register_page.fill_in_password password
end

Then("I receive the corresponding error Sorry, that password is too short. It needs to be eight characters or more.") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I input the necessary details with the password details abcd{int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive the corresponding error Sorry, that password isn{string}s hard to guess.") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end


When("I input the necessary details with the password details abcdefgh") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive the corresponding error Sorry, that password isn{string}t a letter.") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I input the necessary details with the password details {int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive the corresponding error Sorry, that password isn't valid. Please include a letter.") do
  pending # Write code here that turns the phrase above into concrete actions
end
