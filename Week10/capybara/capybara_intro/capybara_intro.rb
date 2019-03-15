require 'capybara'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

# Creates a new session (called "sesh")
sesh = Capybara::Session.new(:chrome)
# sesh2 = Capybara::Session.new(:chrome)

sesh.visit('http://www.toolsqa.com/automation-practice-form/')
# sesh2.visit('http://www.google.com')

sesh.fill_in 'firstname', with: 'test'

sleep 2

sesh.choose 'exp-1'
sesh.choose 'sex-0'

sleep 3

sesh.find(:css, '#exp-4').click

sleep 3

sesh.select 'Africa', from: 'continents'

sleep 3

sesh.within(:css, '#continents') do

end
