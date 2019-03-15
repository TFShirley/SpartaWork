Given("I can access the app") do
  expect(homepage.check_homepage_displayed.displayed?).to be true
end

When("I click budget") do
  homepage.check_budgetpage_link_displayed
end

Then("the budget page opens") do
  expect(budgetpage.check_budgetpage_displayed).to be true
end

Given("I click budget") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter a budget") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the budget is saved and displayed") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("a budget is displayed") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I delete the budget") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("it will be removed from the list") do
  pending # Write code here that turns the phrase above into concrete actions
end
