class AddColumnsPassages < ActiveRecord::Migration
  def self.up
      add_column :passages, :testament_id, :integer
      add_column :passages, :referencia_1, :string
      add_column :passages, :referencia_2, :string
      add_column :passages, :referencia_3, :string
      add_column :passages, :referencia_4, :string

  end

  def self.down
      remove_column :passages, :testament_id
      remove_column :passages, :referencia_1
      remove_column :passages, :referencia_2
      remove_column :passages, :referencia_3
      remove_column :passages, :referencia_4
  end
end
