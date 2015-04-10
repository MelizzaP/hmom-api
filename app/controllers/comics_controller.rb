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
  
  def create
    comic = Comic.new(comic_params)
    comic.save
  end
  
  def show
    @comic = Comic.find(params['id']) 
  end
  
  def edit
    @comic = Comic.find(params['id'])  
  end
  
  def update
  end
  
end
