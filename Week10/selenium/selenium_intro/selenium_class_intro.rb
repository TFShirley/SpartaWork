require 'selenium-webdriver'

class SeleniumQAToolsForm

  FORM_URL = 'https://www.toolsqa.com/automation-practice-form/'

  def initialize
    # Set up driver for chrome
    @driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_form
    @driver.get(FORM_URL)
  end

  def input_firstname text
    @driver.find_element(:name, 'firstname').send_keys(text)
  end

  def input_lastname text
    @driver.find_element(:name, 'lastname').send_keys(text)
  end

  def select_sex_value sex
    if sex == male
      @driver.find_element(:id, "sex-0").click
    elsif sex == female
      @driver.find_element(:id, "sex-1").click
    end
  end

  def select_experience num
    @driver.find_element(:id, "exp-#{num-1}").click
  end

  def input_date date
    @driver.find_element(:id, "datepicker").send_keys(date)
  end

  def select_profession num
    @driver.find_element(:id, "profession-#{num-1}").click
  end

  def select_automation_tool i
    @driver.find_element(:id, "tool-#{i}").click
  end

  def select_continent
    continents = @driver.find_element(:id, 'continents')
    options = continents.find_elements(:tag_name, "option")
    options.each do |option|
      if option.text = choice
        option.click
      end
    end
  end

  def select_command

  end

  def submit
    @driver.find_element(:id, 'submit').click

  end

end

# instantiates a new test form
x = SeleniumQAToolsForm.new
# goes to the website
x.visit_practice_form
sleep 1
# tests are below
x.input_firstname 'Tommo'
sleep 1
x.input_firstname 'Thombinksi'
sleep 1
x.input_lastname 'Shirls'
sleep 1
x.select_sex_value 'male'
sleep 1
x.select_sex_value 'female'
sleep 1
for i in 0..6 do
  x.select_experience i
end
sleep 1
x.input_date 'rewuyihf3874uiwhfwguiqoufhwui4qohv4uyw3ihyuifyhv8yhvw58vih598h43uqigh93q84jg9i4uj98fiowu3ru8feoiurj40oi4u5j8gj8esroigjr598ogiuhjt8sgeoirj589rbrs5ubjrs85oti'
sleep 1
for i in 0..1 do
  x.select_profession i
end
sleep 1
for i in 0..1 do
  x.select_profession i
end
sleep 1
for i in 0..2 do
  x.select_automation_tool i
end
sleep 1
for i in 0..2 do
  x.select_automation_tool i
end
sleep 1


sleep 4










# bottom_text
