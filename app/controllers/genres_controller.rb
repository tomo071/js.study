class GenresController < ApplicationController
  def index
    @genre=Genre.new
    @genres=Genre.all
  end

  def create
    @genre=Genre.new(genre_params)
    @genre.save
    redirect_to genres_path
  end

  def edit
    @genre=Genre.find(params[:id])
  end

  def update
    @genre=Genre.find(params[:id])
    @genre.update(genre_prams)
    redirect_to genres_path
  end

  def destroy
    @genre=Genre.find(params[:id])
    @genre.delete
    redirect_to genres_path
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
