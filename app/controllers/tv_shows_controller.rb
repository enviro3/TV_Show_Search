require 'httparty'
require "themoviedb"
require 'tmdb-api'

class TvShowsController < ApplicationController
  def show
    tv_id = params.keys[1]
    options = {}
    options[:api_key] = "fb6a1d3f38c3d97f67df6d141f936f29"
    options[:language] = "en-US"

    @tv_show = HTTParty.get(
      "https://api.themoviedb.org/3/tv/#{tv_id}",
      {
        headers: {
          'Content-Type' => 'application/x-www-form-urlencoded'
        },
        query: options
      }
    )
  end

  def search_results
    tv_show_name = params[:search]

    if params[:search].empty?
      redirect_to welcome_index_path
    end

    # if params[:search]["results"] == 0
    #   return print "No Results"
    # end
    options = {}
    options[:api_key] = "fb6a1d3f38c3d97f67df6d141f936f29"
    options[:language] = "en-US"
    options[:query] = tv_show_name
    options[:page] = 1
    @tv_show = HTTParty.get(
      "https://api.themoviedb.org/3/search/tv",
      {
        headers: {
          'Content-Type' => 'application/x-www-form-urlencoded'
        },
        query: options
      }
    )

  end


end
