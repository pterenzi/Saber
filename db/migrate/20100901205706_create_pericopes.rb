class CreatePassages < ActiveRecord::Migration
  def self.up
    create_table :passages do |t|
      t.integer :book_id
      t.integer :cap_inicial
      t.integer :ver_ini
      t.integer :cap_final
      t.integer :ver_final
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :passages
  end
end
