class AddColumnsPericopes < ActiveRecord::Migration
  def self.up
      add_column :pericopes, :testamento_id, :integer
      add_column :pericopes, :referencia_1, :string
      add_column :pericopes, :referencia_2, :string
      add_column :pericopes, :referencia_3, :string
      add_column :pericopes, :referencia_4, :string

  end

  def self.down
      remove_column :pericopes, :testamento_id
      remove_column :pericopes, :referencia_1
      remove_column :pericopes, :referencia_2
      remove_column :pericopes, :referencia_3
      remove_column :pericopes, :referencia_4
  end
end
