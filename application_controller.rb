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
    params[:quote]
    erb :result
  end
  
end
