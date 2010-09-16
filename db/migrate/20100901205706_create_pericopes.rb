class CreatePericopes < ActiveRecord::Migration
  def self.up
    create_table :pericopes do |t|
      t.integer :livro_id
      t.integer :cap_inicial
      t.integer :ver_ini
      t.integer :cap_final
      t.integer :ver_final
      t.string :titulo

      t.timestamps
    end
  end

  def self.down
    drop_table :pericopes
  end
end
