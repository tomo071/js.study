class MenusController < ApplicationController
  def new
    @menu=Menu.new
  end

  def create
    @menu=Menu.new(menus_params)
    @menu.save
    redirect_to menus_path
  end

  def index
    @menus=Menu.all
  end

  def edit
    @menu=Menu.find(params[:id])
  end

  def update
    @menu=Menu.find(params[:id])
    @menu.update(menus_prams)
    redirect_to genres_path
  end

  def destroy
    @menu=Menu.find(params[:id])
    @menu.delete
    redirect_to genres_path
  end

  private

  def menus_params
    params.require(:menu).permit(:name, :body, :genre_id)
  end
end
