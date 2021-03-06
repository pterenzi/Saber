class RecreatePassages < ActiveRecord::Migration
  def self.up
     create_table :passages do |t|
       t.integer :testament_id       
       t.integer :book_id
       t.integer :cap_inicial
       t.integer :cap_final
       t.integer :ver_ini
       t.integer :ver_final
       t.string :title
       t.string :referencia_1
       t.string :referencia_2
       t.string :referencia_3
       t.string :referencia_4

       t.timestamps
     end
   end

   def self.down
     drop_table :passages
   end
end