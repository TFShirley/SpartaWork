require 'httparty'
require 'json'
require_relative "services/mtg_services/show_service"
require_relative "services/mtg_services/index_service"

class MtgAPI

  def mtg_show_service
    MtgShowService.new
  end

  def mtg_index_service
    MtgIndexService.new
  end

end
