require "sinatra"
require "sinatra/reloader" if development?
# require "sinatra/contrib"

get '/' do
  "Hello world!"
  "I have updated this page"
  index
  # Always returns the last line of code, so the contents of index will display.
end

get '/random' do
  array = [1,2,3,4]
  "This is a random page with an array: #{array}"
end

def index
  "Hello World, this page has been updated, dawg."
end























# bottom text
