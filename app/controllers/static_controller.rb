class StaticController < ApplicationController
	
def index
# response = Unirest.get('https://api.chucknorris.io/jokes/random')
# # byebug
# @joke = response.body['value']

# These code snippets use an open-source library.
response = Unirest.get "https://musixmatchcom-musixmatch.p.mashape.com/wsr/1.1/artist.get?artist_id=1000",
  headers:{
    "X-Mashape-Key" => "vxGXmAkKjomshOtw6d3nysdrKzK1p1ntw02jsna6xI8aEt5SfE",
    "Accept" => "application/json"
  }
  byebug
 end

def joke_found
response = Unirest.get("https://api.chucknorris.io/jokes/search?query=#{params[:query]}")
# byebug
total_jokes = response.body["total"]
if total_jokes != nil
	@jokenew = response.body["result"][0]["value"]
	@icon_url = response.body["result"][0]["icon_url"]
else
	response = Unirest.get('http://api.icndb.com/jokes/random')
# byebug
	@joke = response.body["value"]["joke"]
	@icon_url = ""  
	end
end


end
