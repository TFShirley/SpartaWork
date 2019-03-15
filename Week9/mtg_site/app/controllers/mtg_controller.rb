class MtgController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
    register Sinatra::Reloader
  end

  # route to view all beers
  get '/mtg' do

    @cards = MtgAPI.new.mtg_index_service.get_all_cards

    erb :'mtg/index'
  end

  # Show page for 1 beer
  get '/mtg/:id' do
    multiverseid = params[:id].to_i

    @card = MtgAPI.new.mtg_show_service.get_card multiverseid
    # @brew_date = Date.parse(@beer.first["first_brewed"]).strftime("%B %Y")

    @card = @card['card']

    erb :'mtg/show'
  end

end
