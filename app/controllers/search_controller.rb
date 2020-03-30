class SearchController < ApplicationController

  def index
    key = ENV['HP_API_KEY']
    require 'pry'; binding.pry
    response = Faraday.get("https://www.potterapi.com/v1/characters?key=#{key}&orderOfThePhoenix=true&house=#{params[:house]}")
    @characters = JSON.parse(response.body, symbolize_names: true)
    require 'pry'; binding.pry
  end

end