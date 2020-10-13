require 'sinatra'

set :session_secret, 'super secret'

# configure do 
#   set :sessions_secret, "Meryl & Tim's secret page"

# end


  get '/' do
    "Hello World"
  end

  get '/hello/:name' do
    "Hello #{params['name']}!"
  end

  get '/secret' do
    "This is Meryl's and Tim's secret page innit"
  end

  get '/tim_secret' do
    "This is Tim's secret page"
  end

  get '/cat' do
    @name = ["Amigo", "Oscar", "Viking"].sample
    erb(:index)
  end

# run Sinatra::Application.run!