require './config/environment'
require './app/models/results'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end
  
  post '/results' do
    foodz = params[:food].to_i
    boroz = params[:boro].to_i
    homez = params[:home].to_i
    roomz = params[:roommates].to_i
    subwayz = params[:subway].to_i
    puts params
    sum = find_sum(foodz, boroz, homez, roomz, subwayz)
    puts sum
    @spirit_animal = id_animal(sum)
    erb :results
  end
  
end
