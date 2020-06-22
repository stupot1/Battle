require 'sinatra'
require_relative './lib/cat_name.rb'

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

get '/cat' do
  @cat_name = CatName.new
  erb (:index)
end
