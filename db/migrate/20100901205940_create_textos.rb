class CreateVerses < ActiveRecord::Migration
  def self.up
    create_table :verses do |t|
      t.integer :book_id
      t.integer :passage_id
      t.integer :chapter
      t.integer :verse_number

      t.timestamps
    end
  end

  def self.down
    drop_table :verses
  end
end
