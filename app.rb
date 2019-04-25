require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :'root'
    end

    get '/new' do
      erb :'pirates/new'
    end

    get '/pirate/show' do
      erb :'pirates/show'
    end
    post '/pirates' do
      @name = params[:pirate][:name]
      @height = params[:pirate][:height]
      @weight = params[:pirate][:weight]
      @sh1_name = params[:pirate][:ships][0][:name]
      @sh1_type = params[:pirate][:ships][0][:type]
      @sh1_booty = params[:pirate][:ships][0][:booty]
      @sh2_name = params[:pirate][:ships][1][:name]
      @sh2_type = params[:pirate][:ships][1][:type]
      @sh2_booty = params[:pirate][:ships][1][:booty]
      # binding.pry
      erb :'pirates/show'
    end
    # code other routes/actions here

  end
end
