require 'rspec'
require 'appium_lib'

RSpec.configure do |config|
  config.formatter = :documentation
end

def opts
  {
    caps: {
    "app": "/Users/tech-a50/Desktop/Week11/apk/budgetwatch.apk",
    "platformName": "Android",
    "deviceName": "emulator-5554"
    }
  }
end
