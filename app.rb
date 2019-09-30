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

get '/red_panda' do
  @name = ["Slim Shady", "Eminem", "Marshall", "Stan"].sample
  erb(:index)
end
