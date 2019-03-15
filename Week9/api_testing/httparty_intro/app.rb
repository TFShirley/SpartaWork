require 'httparty'

response = HTTParty.get('http://www.google.com')

puts response.headers
