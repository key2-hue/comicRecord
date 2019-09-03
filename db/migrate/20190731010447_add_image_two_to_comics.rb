class AddImageTwoToComics < ActiveRecord::Migration[5.2]
  def change
    add_column :comics, :image_two, :string
  end
end
