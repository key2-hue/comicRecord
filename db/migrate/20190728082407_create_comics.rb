class CreateComics < ActiveRecord::Migration[5.2]
  def change
    create_table :comics do |t|
      t.string :title
      t.string :volume
      t.text :thought
      t.timestamps
    end
  end
end
