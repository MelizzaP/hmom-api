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
    comic = Comic.find(params['id'])
    comic.title = params['comic']['title']
    comic.hover_text = params['comic']['hover_text']
    comic.img_path = params['comic']['img_path']
    comic.image_file_name = params['comic']['image_file_name']
    comic.image_content_type = params['comic']['image_content_type']
    comic.image_file_size = params['comic']['image_file_size']
    comic.save
    redirect_to root_path
  end
  
  def destroy
    Comic.delete(params['id'])
    redirect_to root_path
  end
  
end
