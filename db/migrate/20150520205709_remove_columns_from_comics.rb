class RemoveColumnsFromComics < ActiveRecord::Migration
  def change
    remove_column :comics, :image_file_name
    remove_column :comics, :image_content_type
    remove_column :comics, :image_file_size
    remove_column :comics, :image_updated_at
  end
end
