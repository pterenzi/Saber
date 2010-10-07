class AddColumnTestamentId < ActiveRecord::Migration
  def self.up
    add_column :verses, :testament_id, :integer
  end

  def self.down
    remove_column :verses, :testament_id
  end
end
