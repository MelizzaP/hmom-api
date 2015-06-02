class DropImagePath < ActiveRecord::Migration
  def change
    remove_column :comics, :img_path
  end
end
