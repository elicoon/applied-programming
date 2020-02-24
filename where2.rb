require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
  # lat: ± 90
    #need to create a variable that randomizes a latitude 
    @rand_lat = rand(-90.0..90.0)
    
  # long: ± 180
    #need to create a variable that randomizes a longitude
    @rand_lon = rand(-180.0..180.0)
  view "where2"
end