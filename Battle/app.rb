require 'sinatra'

enable :sessions
set :session_secret, "secret"

get '/' do
  "Hello World"
end

get '/secret' do
  "Hello!"
end

get '/secret2' do
  "Hello 2!"
end

get '/secret3' do
  "Hello 3!"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb (:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb (:index)
end

get '/name-form' do
  erb (:nameform)
end