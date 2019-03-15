require 'sinatra'
require 'sinatra/reloader' if development?

require_relative 'lib/mtgapi.rb'
require_relative './app/controllers/static_controller.rb'
require_relative './app/controllers/mtg_controller.rb'

use Rack::Reloader
use Rack::MethodOverride

# use StaticController
# run PunkController

run Rack::Cascade.new([
  StaticController,
  MtgController
])
