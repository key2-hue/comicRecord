class RemoveTitleFromComic < ActiveRecord::Migration[5.2]
  def change
    remove_column :comics, :title, :string
    remove_column :comics, :volume, :string
    remove_column :comics, :thought, :string
  end
end
