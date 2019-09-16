require 'httparty'

class WelcomeController < ApplicationController

  def index
    #TMDb.api_key = 'fb6a1d3f38c3d97f67df6d141f936f29'

    #Tmdb::Api.key("fb6a1d3f38c3d97f67df6d141f936f29")
    #Tmdb::Api.key("en")
    #@tv_shows = Tmdb::TV.popular

    @tv_shows = HTTParty.get("https://api.themoviedb.org/3/tv/popular?api_key=fb6a1d3f38c3d97f67df6d141f936f29&language=en-US")
  end
end
