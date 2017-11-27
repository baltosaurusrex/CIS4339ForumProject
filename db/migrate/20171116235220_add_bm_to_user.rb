class AddBmToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :BM, :boolean, default: false
  end

end
