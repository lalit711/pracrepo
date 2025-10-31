class K2 < ActiveRecord::Migration[8.0]
  def change
    drop_table :users
    rename_table :xyzs, :users
  end
end
