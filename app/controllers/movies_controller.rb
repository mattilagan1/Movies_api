class MoviesController < ApplicationController
  def index
    movies = Movie.all
    # Use each movie's custom as_json
    render json: movies.map(&:as_json)
  end

  def create
    movie = Movie.new(
      title: params[:title],
      score: params[:score],
      description: params[:description]
    )

    if movie.save
      render json: movie.as_json   # order guaranteed
    else
      render json: { errors: movie.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
