class CreateSearches < ActiveRecord::Migration
  def self.up
    create_table :searches do |t|
      t.integer :testamento_id
      t.integer :livro_id
      t.integer :capitulo
      t.integer :versiculo_ini
      t.integer :versiculo_fin
      t.integer :pericope_id
      t.text :texto
      t.timestamps
    end
  end
  
  def self.down
    drop_table :searches
  end
end
