class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.integer :testament_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
