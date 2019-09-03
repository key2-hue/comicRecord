class AddTitleToComics < ActiveRecord::Migration[5.2]
  def change
    add_column :comics, :title, :string, :null => false
    add_column :comics, :volume, :string, :null => false
    add_column :comics, :thought, :text
  end
end
