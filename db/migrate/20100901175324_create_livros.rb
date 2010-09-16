class CreateLivros < ActiveRecord::Migration
  def self.up
    create_table :livros do |t|
      t.integer :testamento_id
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :livros
  end
end
