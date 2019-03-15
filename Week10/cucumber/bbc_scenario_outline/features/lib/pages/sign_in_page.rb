require 'capybara'

class BbcSignInPage
  include Capybara::DSL

  REGISTER_LINK_ID = 'link --link primary'

  def click_register_link
    click_link('Register now')
  end

end
