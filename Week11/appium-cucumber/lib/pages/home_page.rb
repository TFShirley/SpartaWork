class Homepage

  def initialize
    @driver = $driver
  end

  def check_homepage_displayed
    @driver.find_element(:id, "protect.budgetwatch:id/action_settings")
  end

  def check_click_budgetpage_link
    @driver.find_elements(:id, "protect.budgetwatch:id/menu")[0].click
  end

  def check_budgetpage_link_displayed
    @driver.find_elements(:id, "protect.budgetwatch:id/menu")[0].text
  end

end
