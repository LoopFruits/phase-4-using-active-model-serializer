class MoviesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    movies = Movie.all
    render json: movies
  end

  # def show
  #   movie = Movie.find(params[:id])
    #previous way to provide all the json data we need without including our created_at or updated_at attributes
    # render json: movie.to_json(only: [:id, :title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director])
    
    #simplified 
    # render json: movie.to_json(except: [:created_at, :updated_at])

    #even more simplified, movies our strings to a seperate file to reduce code clutter. (moved to movie_serializer.rb)
  def show
    movie = Movie.find(params[:id])
    render json: movie
  end
  # end

  def summary
    movie = Movie.find(params[:id])
    render json: movie, serializer: MovieSummarySerializer
  end

  private

  def render_not_found_response
    render json: { error: "Movie not found" }, status: :not_found
  end
end
