require 'dotenv/load'
require 'bundler'
require "net/http"
require "uri"

Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/result' do
    # user_feeling= params[:feeling] #grabs the feeling selected in index.rb
    # user_quote_feeling = Quote.new(user_feeling) #replaces the selected feeling into the class
    # user_quote_feeling.match_quote #match the quote
    @quote = Quote.new.get_quote #Gets quote to /result.rb
    erb :result #goes/displays to result.erb
  end
  
end