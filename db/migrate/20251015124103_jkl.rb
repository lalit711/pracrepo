class Jkl < ActiveRecord::Migration[8.0]
  def change
    add_index :users, :mail
  end
end
