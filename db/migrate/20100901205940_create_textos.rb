class CreateTextos < ActiveRecord::Migration
  def self.up
    create_table :textos do |t|
      t.integer :livro_id
      t.integer :pericope_id
      t.integer :capitulo
      t.integer :versiculo

      t.timestamps
    end
  end

  def self.down
    drop_table :textos
  end
end
