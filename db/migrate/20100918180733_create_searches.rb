class CreateSearches < ActiveRecord::Migration
  def self.up
    create_table :searches do |t|
      t.integer :testament_id
      t.integer :book_id
      t.integer :chapter
      t.integer :verse_ft
      t.integer :verse_lt
      t.integer :passage_id
      t.text :verse
      t.timestamps
    end
  end
  
  def self.down
    drop_table :searches
  end
end
