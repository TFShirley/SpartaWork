require 'appium_lib'
require 'rspec'
require 'cucumber'

require_relative '../../lib/budget_app.rb'

def opts
  {
    caps: {
    "app": "/Users/tech-a50/Desktop/Week11/apk/budgetwatch.apk",
    "platformName": "Android",
    "deviceName": "emulator-5554"
    }
  }
end

Appium::Driver.new(opts,true)

World(BudgetApp)
