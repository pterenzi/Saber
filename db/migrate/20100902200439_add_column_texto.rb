class AddColumnTexto < ActiveRecord::Migration
  def self.up
    add_column :textos, :texto, :text
  end

  def self.down
    remove_column :textos, :texto
  end
end
