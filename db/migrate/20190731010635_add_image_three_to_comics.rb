class AddImageThreeToComics < ActiveRecord::Migration[5.2]
  def change
    add_column :comics, :image_three, :string
  end
end
