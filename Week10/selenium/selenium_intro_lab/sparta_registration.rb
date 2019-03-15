require 'selenium-webdriver'

class SpartaRegistration

  attr_accessor :registration_url, :signed_up_url

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @registration_url = 'https://crispyjourney.herokuapp.com/'
  end

  def visit_registration_site
    @chrome_driver.get(@registration_url)
  end

  def get_current_url
    @chrome_driver.current_url
  end

  def input_first_name_field(text)
    @chrome_driver.find_element(:id, 'firstName').send_keys text
  end

  def get_first_name_field
    @chrome_driver.find_element(:id, 'firstName').attribute('value')
  end

  def input_last_name_field(text)
    @chrome_driver.find_element(:id, 'lastName').send_keys text
  end

  def get_last_name_field
    @chrome_driver.find_element(:id, 'lastName').attribute('value')
  end

  def input_age(text)
    @chrome_driver.find_element(:css, 'input[placeholder="Enter Age"]').send_keys text
  end

  def get_age
    @chrome_driver.find_element(:css, 'input[placeholder="Enter Age"]').attribute('value')
  end

  def input_date_of_birth(text)
    @chrome_driver.find_element(:name, 'dob').send_keys text
  end

  def get_date_of_birth
    @chrome_driver.find_element(:name, 'dob').attribute('value').split('-').reverse!.join("/")
  end

  def select_gender
    if gender.lowercase == 'male'
      @chrome_driver.find_element(:css, 'label[for="customRadioInline1"]').click
    elsif gender.lowercase == 'female'
      @chrome_driver.find_element(:css, 'label[for="customRadioInline2"]').click
    end
  end

  def is_gender_selected
    if gender == 'male'
      @chrome_driver.find_element(:css, 'label[for="customRadioInline1"]').enabled?
    elsif gender == 'female'
      @chrome_driver.find_element(:css, 'label[for="customRadioInline2"]').enabled?
    end
  end

  def input_degree(text)
    @chrome_driver.find_element(:css, 'input[placeholder="Enter Degree"]').send_keys text
  end

  def get_degree
    @chrome_driver.find_element(:css, 'input[placeholder="Enter Degree"]').attribute('value')
  end

  def select_university
    dropdown = @chrome_driver.find_element(:id, 'inputUni')
    options = dropdown.find_elements(:tag_name, 'option')
    rand = rand(1...options.length)
    options[rand].click
  end

  def is_a_university_selected
    @chrome_driver.find_element(:id, 'inputUni').text.include? 'University'
  end

  def input_address(text)
    @chrome_driver.find_element(:id, 'inputAddress').send_keys text
  end

  def get_address
    @chrome_driver.find_element(:id, 'inputAddress').attribute('value')
  end

  def input_address_2(text)
    @chrome_driver.find_element(:id, 'inputAddress2').send_keys text
  end

  def get_address_2
    @chrome_driver.find_element(:id, 'inputAddress2').attribute('value')
  end

  def input_city(text)
    @chrome_driver.find_element(:id, 'inputCity').send_keys text
  end

  def get_city
    @chrome_driver.find_element(:id, 'inputCity').attribute('value')
  end

  def select_county
    dropdown = @chrome_driver.find_element(:id, 'inputCounty')
    options = dropdown.find_elements(:tag_name, 'option')
    rand = rand(1...options.length)
    options[rand].click
  end

  def is_county_selected
    @chrome_driver.find_element(:id, 'inputUni').text != 'Choose'
  end

  def input_postcode(text)
    @chrome_driver.find_element(:id, 'inputPostcode').send_keys text
  end

  def get_postcode
    @chrome_driver.find_element(:id, 'inputPostcode').attribute('value')
  end

  def input_email(text)
    @chrome_driver.find_element(:id, 'inputemailaddress').send_keys text
  end

  def get_input_email
    @chrome_driver.find_element(:id, 'inputemailaddress').attribute('value')
  end

  def input_skills(text)
    @chrome_driver.find_element(:id, 'inputemailaddress').send_keys text
  end

  def get_input_skills
  end

  def input_phone_number(text)
  end

  def get_input_phone_number
  end

  def input_linkedIn_URL(text)
  end

  def get_input_linkedIn_URL
  end

  def input_upload_file(text)
  end

  def get_input_file
  end

  def input_SDET_stream
  end

  def get_input_SDET_stream
  end

  def input_DevOps_stream
  end

  def get_input_DevOps_stream
  end

  def input_terms_conditions
  end

  def get_input_terms_conditions
  end

  def get_slide_experience
  end

  def click_sign_in
  end
end
