require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |info_hash|
        Ship.new(info_hash)
      end

      @ships = Ship.all
# binding.pry
      erb :'pirates/show'
    end
  end
end
