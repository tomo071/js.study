class MenuController < ApplicationController
  def new
    @menu=Menu.new
  end
  
  def create
    @menu=Menu.new(menu_params)
    @menu.save
  end

  def index
    @menus=Menu.all
    @genre=Genre.find(params[:id])
    @menu=@genre.menus
  end

  def show
  end

  def edit
  end
  
  private
  
  def menu_params
    params.require(:Menu).permit(:name,:body,:genre_id)
  end
end
