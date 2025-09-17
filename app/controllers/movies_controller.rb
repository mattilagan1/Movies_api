class MoviesController < ApplicationController
  def index
    movies = Movie.all 

    render json: movies
  end

  def create
    movies = Movie.create!(
      title: params[:title],
      rating: params[:rating]
    )

    render json: movies
  end
end
