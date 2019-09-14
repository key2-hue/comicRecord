class RemoveImageFromComics < ActiveRecord::Migration[5.2]
  def change
    remove_column :comics, :image, :string
    remove_column :comics, :image_two, :string
    remove_column :comics, :image_three, :string
  end
end
