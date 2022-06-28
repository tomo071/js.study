class GenresController < ApplicationController
  def index
    @genre=Genre.new
    @genres=Genre.all
  end
  
  def create
    @genre=Genre.new(genre_prams)
    @genre.save
  end

  def edit
    @genre=Genre.find(params[:id])
    @genre.update(genre_prams)
    redirect_to
  end
  
  private
  
  def genre_prams
    params.require(:genre).require(:name,:menu_id)
  end
end
