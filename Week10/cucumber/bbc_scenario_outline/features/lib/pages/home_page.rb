require 'capybara'

class BbcHomePage
  include Capybara::DSL

  HOMEPAGE_URL = 'https://www.bbc.co.uk'
  SIGN_IN_LINK_ID = '#idcta-link'
  SIGN_IN_TEXT_ID = '#idcta-username'

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def sign_in_link
    # Finds the sign-in button
    find(SIGN_IN_LINK_ID)
  end

  def click_sign_in
    # Clicks the sign-in button (if it's there)
    sign_in_link.click
  end

end
