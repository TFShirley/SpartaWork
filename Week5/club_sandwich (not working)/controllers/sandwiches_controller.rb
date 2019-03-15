class SandwichesController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  helpers Sinatra::Cookies
  set :sessions, true
  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, "views")}

  # Index
  get "/" do

    unless cookies[:visited]
      @message = true
      # cookies[:visited] = 1
      response.set_cookie(:visited, :value => 1, :expires => Time.now + 10)
    end

    @sandwiches = Sandwich.all

    erb :"sandwiches/index"
  end

  # New
  get "/new" do
    # Create empty sandwich
    @sandwich = Sandwich.new
    erb :"sandwiches/new"
  end

  # Show
  get "/:id" do
    id = params[:id].to_i

    if(!session[:sandwiches])
      session[:sandwiches] = []
    end

    # See if it includes the ID of the sandwich we're looking at; if it doesn't, ADD IT IN.
    if !session[:sandwiches].include? $sandwiches[id][:title]
      session[:sandwiches].push $sandwiches[id][:title]
    end

    print session[:sandwiches]

    @sandwich = Sandwich.find id
    erb :"sandwiches/show"
  end

  # Edit
  get "/:id/edit" do
    id = params[:id].to_i
    @sandwich = Sandwich.find id
    erb :"sandwiches/edit"
  end

  # Create
  post '/' do
    sandwich = Sandwich.new
    sandwich.title = params[:title]
    sandwich.description = params[:description]

    sandwich.save

    redirect "/"
  end

  put "/:id" do
    id = params[:id].to_i

    sandwich = Sandwich.find id
    sandwich.title = params.title
    sandwich.description = params.description

    sandwich.save
    redirect "/#{id}"
  end

  delete "/:id" do
    id = params[:id].to_i
    Sandwich.destroy id
    redirect "/"
  end

  # # New
  # get "/" do
  #   @title = "Club Sandwich"
  #   @sandwiches = $sandwiches
  #   erb :'posts/index'
  # end
  #
  # # Show
  # get "/:id" do
  #   id = params[:id]
  #   "<h1>SHOW: #{id}</h1>"
  # end
  #
  # # Edit
  # get "/:id/edit" do
  #   "<h1>EDIT: #{params[:id]}</h1>"
  # end
  #
  # # Create
  # post "/:id/edit" do
  #   "<h1>CREATE: #{params[:id]}</h1>"
  # end
  #
  # # Update
  # put "/:id" do
  #   "<h1>UPDATE: #{params[:id]}</h1>"
  # end
  #
  # # Delete
  # delete "/:id" do
  #   "<h1>DELETE: #{params[:id]}</h1>"
  # end


end
