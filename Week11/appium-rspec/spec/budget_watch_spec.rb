require 'spec_helper'

describe 'testing budget app' do

  before(:all) do
    @name = 'budget name'
    @driver = Appium::Driver.new(opts, true)
    @driver.start_driver
  end

  after(:all) do
    @driver.driver_quit
  end

  it "should open the app to the homepage" do
    expect(@driver.find_element(:id, "protect.budgetwatch:id/action_settings").displayed?).to be true
  end

  it "should have the budget option on the landing page" do
    expect(@driver.find_elements(:id, "protect.budgetwatch:id/menu")[0].text).to eq 'Budgets'
  end

  it "should access the budget page" do
    @driver.find_elements(:id, "protect.budgetwatch:id/menu")[0].click
    expect(@driver.find_element(:id, "protect.budgetwatch:id/action_calendar").displayed?).to be true
  end

  it "should be able to add a budget" do
    @driver.find_element(:id, "protect.budgetwatch:id/action_add")[0].click
    @driver.find_element(:id, "protect.budgetwatch:id/budgetNameEdit")[0].send_keys(@name)
    @driver.find_element(:id, "protect.budgetwatch:id/valueEdit")[0].send_keys('30.00')
    @driver.find_elements(:id, "protect.budgetwatch:id/action_save")[0].click
    expect (@driver.find_elements(:id, "protect.budgetwatch:id/budgetName")[-2].text).to eq @name
  end

  it "should return to the home page" do
    @driver.find_element(:accessibility_id, "Navigate Up").click
    expect(@driver.find_element(:id, "protect.budgetwatch:id/action_settings").displayed?).to be true
  end

  it "should be able to add a transaction within the budget" do
    pending
  end

  it "should not be able to add a transaction of a negative amount" do
    pending
  end

  it "should not be able to add a transaction beyond the budget" do
    pending
  end

end
