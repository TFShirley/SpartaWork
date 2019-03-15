class MtgIndexService

  include HTTParty

  attr_accessor :cards

  def get_all_cards
    @cards = JSON.parse(HTTParty.get('https://api.magicthegathering.io/v1/cards').body)
    @cards = @cards['cards']
  end

end
