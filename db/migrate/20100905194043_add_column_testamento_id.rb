class AddColumnTestamentoId < ActiveRecord::Migration
  def self.up
    add_column :textos, :testamento_id, :integer
  end

  def self.down
    remove_column :textos, :testamento_id
  end
end
