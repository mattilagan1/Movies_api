class MoviesController < ApplicationController
  def index
    movies = Movie.all

    render json: movies
  end

  def create
    movies = Movie.new(
      title: params[:title],
      score: params[:score],
      description: params[:description]
    )

    if movies.save
      render json: movies
    else
      render json: movies.errors, status: :unprocessable_entity
    end
  end
end
