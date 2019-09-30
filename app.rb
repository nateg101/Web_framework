require 'sinatra'
set :session_secret, "super secret"

get '/' do
  "James is my bestest pal"
end

get '/secret' do
  "I actually like Jay"
end

get '/hi' do
  "Hi, sup?"
end

get '/random-red_panda' do
  @name = ["Slim Shady", "Eminem", "Marshall", "Stan"].sample
  erb(:index)
end

get '/named-red_panda' do
  p params
  @name = params[:name]
  erb(:index)
end
