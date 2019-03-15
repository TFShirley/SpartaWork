require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_sign_in_page'

module BBCSite

  def bbc_homepage
    BBCHomepage.new
  end

  def bbc_sign_in_page
    BBCSignInPage.new
  end

end
