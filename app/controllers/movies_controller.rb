class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movies_path
    else
      redirect_to movies_new_path
    end
  end

  def show
    @movie = Movie.find get_id
  rescue ActiveRecord::RecordNotFound
    @movie = nil
    load_page_error
  end

  def edit
    @movie = Movie.find(get_id)
  rescue ActiveRecord::RecordNotFound
    @movie = nil
    load_page_error
  end

  def update
    @movie = Movie.find(get_id)
    if @movie.update(movie_params)
      redirect_to "/movies/#{get_id}"
    else
      render(:edit, id: @movie.id)
    end
  rescue ActiveRecord::RecordNotFound
    load_page_error
  end

  private
  def get_id
    params['id']
  end

  def movie_params
    params.require(:movie).permit(:title, :release_date, :description)
  end

  def load_page_error
    render file: "#{Rails.root}/public/404.html", status: 404
  end
end
