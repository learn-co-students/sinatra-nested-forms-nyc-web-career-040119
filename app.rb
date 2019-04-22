require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate]) # pass in as args

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end # create new ships based on the hash key

      @ships = Ship.all # set variable for Ship class

      erb :"pirates/show"
    end

  end # end class
end
