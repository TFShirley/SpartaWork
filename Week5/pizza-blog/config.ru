require "sinatra"
require "sinatra/reloader"

require_relative "controllers/pizzas_controller.rb"

use Rack::MethodOverride
run PizzasController
