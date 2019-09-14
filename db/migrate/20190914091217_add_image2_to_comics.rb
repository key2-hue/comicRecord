class AddImage2ToComics < ActiveRecord::Migration[5.2]
  def change
    add_column :comics, :image, :string
  end
end
