require 'sinatra'

get '/' do
  erb :index
end

get '/about_me' do
  erb :about_me
end
