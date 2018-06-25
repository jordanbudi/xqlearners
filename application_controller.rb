require 'bundler'
Bundler.require
require_relative 'models/model.rb'
require_relative 'models/text.rb'
require 'twilio-ruby'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/learnerGoalQuiz' do
    erb :learnerGoalQuiz
  end

  post '/learnerGoal' do
    @learnerGoalPoster = collectAnswers(params[:question1], params[:question2], params[:question3], params[:question4], params[:question5], params[:question6], params[:question7])
    @name = params[:name]
    erb :learnerGoal
  end

  get '/text' do
    @messagefortext = "hello"
    erb :text
  end

  post '/send' do
    @phonenumber = params[:phonenumber]
    @path = params[:path]
    @name = params[:name]
    sendMessage(@phonenumber, @path, @name)
    erb :index
  end
end