class RenamePassageColumn < ActiveRecord::Migration
    def self.up
      change_table :verses do |t|
        t.rename :pericope_id, :passage_id
      end
    end



    def self.down
      raise IreeversibleMigration
    end
  end
