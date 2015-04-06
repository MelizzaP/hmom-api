class ComicsController < ApplicationController
  
  def home
    
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
  
  
end
