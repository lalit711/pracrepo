class CreateXyzs < ActiveRecord::Migration[8.0]
  def change
    create_table :xyzs do |t|
      t.string :name
      t.bigint :age
      t.string :bio
      t.string :mail
      t.string :password

      t.timestamps
    end
  end
end
