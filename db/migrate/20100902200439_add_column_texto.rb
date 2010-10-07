class AddColumnVerse < ActiveRecord::Migration
  def self.up
    add_column :verses, :verse, :text
  end

  def self.down
    remove_column :verses, :verse
  end
end
