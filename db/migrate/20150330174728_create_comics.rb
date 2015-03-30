class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :title
      t.string :img_path
      t.string :hover_text

      t.timestamps null: false
    end
  end
end
