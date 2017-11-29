class RenameNameToTitle < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :name, :title
  end
end
