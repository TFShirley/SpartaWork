class PizzasController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, "views")}

  $pizzas = [{
    id: 0,
    title: "Margharita",
    body: "The original, the classic, the all-rounder."
  },{
    id: 1,
    title: "Pepperoni",
    body: "An iconic, meaty treat"
  },{
    id: 2,
    title: "Four-Cheese",
    body: "A pizza that satisfies the cheesiest desires"
  }]

  get "/" do
    @pizzas = $pizzas
    erb :"pizzas/index"
  end
  # New
  get "/new" do
    @pizza = {
      id: "",
      title: "",
      body: ""
    }

    erb :"pizzas/new"
  end

  # Show
  get "/:id" do
    id = params[:id].to_i
    @pizza = $pizzas[id]
    erb :'pizzas/show'
  end

  # Edit
  get "/:id/edit" do
    id = params[:id].to_i
    @pizza = $pizzas[id]
    erb :'pizzas/edit'
  end

  # Create
  post "/" do
    new_pizza = {
      id: $pizzas.length,
      title: params[:title],
      body: params[:body]
    }

    $pizzas.push new_pizza

    redirect "/"
  end

  # Update
  put "/:id" do
    id = params[:id].to_i
    pizza = $pizzas[id]
    pizza[:title] = params[:title]
    pizza[:body] = params[:body]

    $pizzas[id] = pizza

    redirect "/#{id}"
  end

  # Delete
  delete "/:id" do
    id =params[:id].to_i
    $pizzas.delete_at id
    redirect "/"
  end

end
