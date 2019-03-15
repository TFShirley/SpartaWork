require 'selenium-webdriver'

chrome_driver = Selenium::WebDriver.for :chrome

chrome_driver.get('http://www.toolsqa.com/automation-practice-form/')

# Sleep lets you wait a certain amount of seconds before doing something
sleep 3

# chrome_driver.find_element(:link_text, 'Partial Link Test').click

# # Must find the element on the page first before operating on it
# chrome_driver.find_element(:name, 'firstname').send_keys 'first name'

for i in 0..6 do
  chrome_driver.find_element(:id, "exp-#{i}").click
end

sleep 3
