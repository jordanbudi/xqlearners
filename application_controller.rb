require 'bundler'
Bundler.require
require_relative 'models/model.rb'
require_relative 'models/text.rb'
require 'twilio-ruby'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/sauce' do    
    erb :sauce
  end
  
  post '/compliment' do
    @compliment = prep_ingredients(params[:name], params[:description], params[:feature], params[:rating])
    erb :compliment
  end
  
  post '/text' do
    @messagefortext = params[:message]
    erb :text
  end
  
  post '/send' do
    @messagefortext = params[:messagefortext]
    @phonenumber = params[:phonenumber]
    @admirer = params[:admirer]
    sendCrushMessage(@phonenumber, @messagefortext, @admirer)
    erb :index
  end
end