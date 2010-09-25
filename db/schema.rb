# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100921043143) do

  create_table "livros", :force => true do |t|
    t.integer  "testamento_id"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pericopes", :force => true do |t|
    t.integer  "testamento_id"
    t.integer  "livro_id"
    t.integer  "cap_inicial"
    t.integer  "cap_final"
    t.integer  "ver_ini"
    t.integer  "ver_final"
    t.string   "titulo"
    t.string   "referencia_1"
    t.string   "referencia_2"
    t.string   "referencia_3"
    t.string   "referencia_4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", :force => true do |t|
    t.integer  "testamento_id"
    t.integer  "livro_id"
    t.integer  "capitulo"
    t.integer  "versiculo_ini"
    t.integer  "versiculo_fin"
    t.integer  "pericope_id"
    t.text     "texto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testamentos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "textos", :force => true do |t|
    t.integer  "livro_id"
    t.integer  "pericope_id"
    t.integer  "capitulo"
    t.integer  "versiculo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "texto"
    t.integer  "testamento_id"
  end

end
