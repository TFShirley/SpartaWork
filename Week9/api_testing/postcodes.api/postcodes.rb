require 'httparty'
require 'json'

class Postcodesio
  include HTTParty

  attr_accessor :single_result, :multiple_results

  base_uri "https://api.postcodes.io"

  def single_postcode_result postcode
    response = self.class.get("/postcodes/#{postcode}").body
    @single_result = JSON.parse(response)
  end

  def multiple_postcodes_result postcodearray
    response = self.class.post("/postcodes", :body => {'postcodes': postcodearray}).body
    @multiple_results = JSON.parse(response)
  end

end

postcode = Postcodesio.new

puts postcode.multiple_postcodes_result ["SA14JN", "B904XS", "SA28PG"]
