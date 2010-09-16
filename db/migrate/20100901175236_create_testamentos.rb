class CreateTestamentos < ActiveRecord::Migration
  def self.up
    create_table :testamentos do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :testamentos
  end
end
