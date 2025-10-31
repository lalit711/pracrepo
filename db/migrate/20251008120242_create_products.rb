class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.boolean :available
      t.float :rating

      t.timestamps
    end
  end
end
