class BudgetPage

  def initialize
    @driver = $driver
  end

  def check_budgetpage_displayed
    @driver.find_element(:id, "protect.budgetwatch:id/action_calendar").displayed?
  end

  def check_add_budget
    @driver.find_element(:id, "protect.budgetwatch:id/action_add")[0].click
    @driver.find_element(:id, "protect.budgetwatch:id/budgetNameEdit")[0].send_keys(@name)
    @driver.find_element(:id, "protect.budgetwatch:id/valueEdit")[0].send_keys('30.00')
    @driver.find_elements(:id, "protect.budgetwatch:id/action_save")[0].click
  end

  def check_add_budget_works
    @driver.find_elements(:id, "protect.budgetwatch:id/budgetName")[-2].text
  end

end
