require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
    #add ruby code here...
#   "Hello"

# die1=rand(1..6)
# die2=rand(1..6)

# "<h1>Dice: Your first die is #{die1}, your second die is #{die2}.</h1> <p>Your total is #{die1+die2}.</p>"

#this allows us to look at a different filetype in the folder. In this case, the file called dice/rb
view "dice"

end


get "/tacos" do
    "Tacos taste great"
end