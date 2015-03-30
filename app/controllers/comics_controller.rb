class ComicsController < ApplicationController
  
  def index 
    @comics = Comic.all
  end
  
  def create
    comic = Comic.new(comic_params)
    comic.save
  end
  
  
end
