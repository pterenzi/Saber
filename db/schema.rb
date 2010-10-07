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

ActiveRecord::Schema.define(:version => 20101006044113) do

  create_table "books", :force => true do |t|
    t.integer  "testament_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passages", :force => true do |t|
    t.integer  "testament_id"
    t.integer  "book_id"
    t.integer  "chapter_ft"
    t.integer  "chapter_lt"
    t.integer  "verse_ft"
    t.integer  "verse_lt"
    t.string   "title"
    t.string   "reference_1"
    t.string   "reference_2"
    t.string   "reference_3"
    t.string   "reference_4"
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

  create_table "testaments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "verses", :force => true do |t|
    t.integer  "book_id"
    t.integer  "passage_id"
    t.integer  "chapter_number"
    t.integer  "verse_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "verse"
    t.integer  "testament_id"
  end

end
