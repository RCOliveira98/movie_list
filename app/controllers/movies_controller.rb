class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
  end

  def create
  end

  def show
  end
end
