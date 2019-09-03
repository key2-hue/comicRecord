class CreateThumbnails < ActiveRecord::Migration[5.2]
  def change
    create_table :thumbnails do |t|
      t.integer :comic_id
      t.timestamps
    end
  end
end
