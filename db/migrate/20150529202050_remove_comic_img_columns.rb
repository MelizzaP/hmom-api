class RemoveComicImgColumns < ActiveRecord::Migration
  def change
    remove_column :comics, :comic_img_file_name
    remove_column :comics, :comic_img_content_type
    remove_column :comics, :comic_img_file_size
    remove_column :comics, :comic_img_updated_at
  end
end
