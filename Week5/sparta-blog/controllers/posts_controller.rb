class PostsController < Sinatra::Base


  configure :development do
    register Sinatra::Reloader
  end

  # Sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # Sets the view directory correctly
  set :views, Proc.new { File.join(root, "views")}

  # $ is used for global variables
  $posts = [{
    id: 0,
    title: "Post 1",
    body: "This is the first post"
    },{
    id: 1,
    title: "Post 2",
    body: "This is the second post"
    },{
    id: 2,
    title: "Post 3",
    body: "This is the third AND FINAL post"
  }]

  # Index
  get "/" do
    @title = "Sparta Blogs"
    @posts = $posts
    erb :'posts/index'
  end

  # New must be above Show, otherwise "new" will be interpreted as a dynamic page instead of the new command

  # New
  get "/new" do
    "<h1>This is where you can make new blogs</h1>"
  end

  # Show
  get "/:id" do
    id = params[:id]
    "<h1>SHOW: #{id}</h1>"
  end

  # Edit
  get "/:id/edit" do
    "<h1>EDIT: #{params[:id]}</h1>"
  end

  # Create
  post "/:id/edit" do
    "<h1>CREATE: #{params[:id]}</h1>"
  end

  # Update
  put "/:id" do
    "<h1>UPDATE: #{params[:id]}</h1>"
  end

  # Delete
  delete "/:id" do
    "<h1>DELETE: #{params[:id]}</h1>"
  end

end



















# bottom text
