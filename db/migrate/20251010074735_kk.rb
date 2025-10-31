class Kk < ActiveRecord::Migration[8.0]
  def change
    execute <<-SQL
    INSERT INTO xyzs (id,name,mail,age,created_at,updated_at)
    SELECT id, name, mail,age,created_at,updated_at FROM users;
    SQL
  end
end
