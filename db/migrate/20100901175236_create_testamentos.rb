class CreateTestaments < ActiveRecord::Migration
  def self.up
    create_table :testaments do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :testaments
  end
end
