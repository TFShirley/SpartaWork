require 'json'
require_relative 'json_parse_class'

colors = JSONParse.new('json_example.json')
rates = JSONParse.new('json_exchange_rates.json')

p rates.json_parse["rates"]["GBP"]
