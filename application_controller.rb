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
    @quote = Quote.new.get_quote
    user_feeling= params[:feeling]
    Quote.new(user_feeling)
    erb :result
  end
  
end
