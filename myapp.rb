require 'sinatra'
require 'twitter'

get '/' do

  @styles = ['superhero', 'cerulean', 'cyborg', 'amelia', 'slate']
  
  # Assign the parameter value of `query` to the instance variable `@query`
  @query = params['query']

  # Set @tweets to default to an empty array
  @tweets = []

  # Only search Twitter if the query has a value
  if @query && @query.length > 0
    client = Twitter::Client.new
    tweet_container = client.search(@query)
    @tweets = tweet_container.results
  end

  erb :index
end

get '/about_me' do
  erb :about_me
end
