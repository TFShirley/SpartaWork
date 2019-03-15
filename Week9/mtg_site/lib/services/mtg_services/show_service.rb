class MtgShowService

  include HTTParty

  attr_accessor :card

  def get_card multiverseid
    @card = JSON.parse(HTTParty.get("https://api.magicthegathering.io/v1/cards/#{multiverseid}").body)
  end

end
