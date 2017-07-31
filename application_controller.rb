require 'bundler'
Bundler.require

require 'dotenv'
Dotenv.load('local.env')

require_relative 'models/model.rb'
require 'httparty'
class MyApp < Sinatra::Base

  get '/' do
    erb :search_page
  end
  
  #this should change to post method to get user info from the root route
  get '/show_me_the_gif' do
    #build the URL to get the data from
    #this comes from local.env file
    giphy_api_key = ENV['GIPHY_API_KEY']
    search_term = "worm"
    api_endpoint_url = "http://api.giphy.com/v1/stickers/translate?api_key=#{giphy_api_key}&s=#{search_term}"
    
    #this gets the json from the URL
    giphy_response_json = HTTParty.get(api_endpoint_url)
    
    #.parsed_response turns the JSON {'key':value} and puts it into a ruby hash {'key'=>value}
    giphy_response_hash = giphy_response_json.parsed_response
    
    #this will need to changed slightly so that we can actually use the
    #hash in the erb view
    giphy_images_hash = giphy_response_hash['data']
    erb :results_page
  end


end