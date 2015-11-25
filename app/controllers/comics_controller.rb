class ComicsController < ApplicationController
  before_action :authenticate_admin!, except: [:home, :about, :other_comics, :index, :show]

  def home
    @comic = Comic.last
    if @comic
      @prev = @comic.prev
    end
    @random = Comic.select('id').order('random()').first
  end

  def index
    @comics = Comic.all
  end

  def new
    @comic = Comic.new
  end

  def create
    Comic.create(comic_params)
    redirect_to root_path
  end

  def show
    @comic = Comic.find(params['id'])
    @prev = @comic.prev
    @next = @comic.next
    @random = Comic.select('id').order('random()').first
  end

  def edit
    @comic = Comic.find(params['id'])
  end

  def update
    comic = Comic.find(params['id'])
    comic.update(comic_params)
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
    params.require(:comic).permit(:id, :title, :hover_text, :image)
  end
end
