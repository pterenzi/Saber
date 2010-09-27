class RecreatePericopes < ActiveRecord::Migration
  def self.up
     create_table :pericopes do |t|
       t.integer :testamento_id       
       t.integer :livro_id
       t.integer :cap_inicial
       t.integer :cap_final
       t.integer :ver_ini
       t.integer :ver_final
       t.string :titulo
       t.string :referencia_1
       t.string :referencia_2
       t.string :referencia_3
       t.string :referencia_4

       t.timestamps
     end
   end

   def self.down
     drop_table :pericopes
   end
end