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
  rescue ActiveRecord::RecordNotFound
    @movie = nil
    render file: "#{Rails.root}/public/404.html", status: 404
  end

  private
  def get_id
    params['id']
  end
end
