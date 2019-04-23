require './environment'
require "pry"

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"/pirates/new"
    end

    post '/pirates' do
      # binding.pry
      @name = Pirate.new
      @pirate = params[:pirate]
      @ship_one = Ship.new
      @ship_one = params[:pirate][:ships][0]
      @ship_two = Ship.new
      @ship_two = params[:pirate][:ships][1]
      erb :"pirates/show"
    end

  end
end
