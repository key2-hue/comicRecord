class AddComicRef2ToThumbnail < ActiveRecord::Migration[5.2]
  def change
    add_column :thumbnails, :comic, :string
    add_column :thumbnails, :references, :string
  end
end
