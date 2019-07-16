require './environment'

module FormsLab
  class App < Sinatra::Base
	set :views, 'views/pirates'

    get "/" do
    	erb :new
    end

	get "/new" do
    	erb :new
    end

    post "/pirates" do
    	@pirate = Pirate.new(params[:pirate])
 
  		params[:pirate][:ships].each do |details|
    		Ship.new(details)
  		end
 
  		@ships = Ship.all
 
    	erb :show
    end
    
  end
end
