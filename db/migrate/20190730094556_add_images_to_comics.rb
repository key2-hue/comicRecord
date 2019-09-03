class AddImagesToComics < ActiveRecord::Migration[5.2]
  def change
    add_column :comics, :genre, :string
  end
end
