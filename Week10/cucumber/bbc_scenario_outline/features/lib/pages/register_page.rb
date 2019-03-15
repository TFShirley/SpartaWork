require 'capybara'

class BbcRegisterPage
  include Capybara::DSL

  OVER_THIRTEEN_ID = '13 or over'
  DOB_DATE_ID = 'day-input'
  DOB_MONTH_ID = 'month-input'
  DOB_YEAR_ID = 'year-input'
  DOB_CONTINUE_ID = 'submit-button'
  SHOW_PASS_ID = 'toggle-password-type'
  PASS_ERROR_ID = 'form-message-password'

  def visit_register_page

  end

  def select_over_thirteen
    click_link('13 or over')
  end

  def enter_DOB(day, month, year)
    fill_in(DOB_DATE_ID, with: day)
    fill_in(DOB_MONTH_ID, with: month)
    fill_in(DOB_YEAR_ID, with: year)
  end

  def click_next_button
    click_button(DOB_CONTINUE_ID)
  end

  def fill_in_email(email)
    fill_in('Email', with: email)
  end

  def fill_in_password(password)
    fill_in('Password', with: password)
  end

  def password_field
    click_button(SHOW_PASS_ID)
  end

  def check_error_message
    find(PASS_ERROR_ID)
  end

end
