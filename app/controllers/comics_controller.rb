class ComicsController < ApplicationController
  before_action :authenticate_admin!, except: [:home, :about, :comtact, :other_comics, :index, :show]

  def home
    @comic = Comic.last
  end

  def about
  end

  def contact
  end

  def other_comics
  end

  def index
    @comics = Comic.all
  end

  def new
    @comic = Comic.new
  end

  def create
    Comic.create( comic_params[:comic] )
    redirect_to root_path
  end

  def show
    @comic = Comic.find(params['id'])
  end

  def edit
    @comic = Comic.find(params['id'])
  end

  def update
    comic = Comic.find(params['id'])
    comic.update( comic_params[:comic] )
    redirect_to root_path
  end

  def destroy
    Comic.delete(params['id'])
    redirect_to root_path
  end

  private

  # Use strong_parameters for attribute whitelisting
  # # Be sure to update your create() and update() controller methods.

  def comic_params
    params.require(:comic).permit(:comic_img, :title, :hover_text)
  end
end
