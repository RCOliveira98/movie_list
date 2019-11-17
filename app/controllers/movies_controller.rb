class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
  end

  def create
  end

  def show
    @movie = Movie.find get_id
  end

  private
  def get_id
    params['id']
  end
end
