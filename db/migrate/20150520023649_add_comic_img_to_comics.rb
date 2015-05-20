class AddComicImgToComics < ActiveRecord::Migration
  def self.up
    add_attachment :comics, :comic_img
  end

  def self.down
    remove_attachment :comics, :comic_img
  end
end
