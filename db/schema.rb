# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161103222624) do

  create_table "categoriaprodutos", force: :cascade do |t|
    t.string   "nome",       limit: 30
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "fone"
    t.string   "cep"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destroys", force: :cascade do |t|
    t.string   "Clientes"
    t.string   "nome"
    t.string   "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estoques", force: :cascade do |t|
    t.float    "preco"
    t.string   "saldo"
    t.integer  "produto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_estoques_on_produto_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "nome",                   limit: 30
    t.string   "descricao"
    t.text     "detalhamento"
    t.integer  "subcategoriaproduto_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "foto1_file_name"
    t.string   "foto1_content_type"
    t.integer  "foto1_file_size"
    t.datetime "foto1_updated_at"
    t.string   "foto2_file_name"
    t.string   "foto2_content_type"
    t.integer  "foto2_file_size"
    t.datetime "foto2_updated_at"
    t.string   "foto3_file_name"
    t.string   "foto3_content_type"
    t.integer  "foto3_file_size"
    t.datetime "foto3_updated_at"
    t.string   "foto4_file_name"
    t.string   "foto4_content_type"
    t.integer  "foto4_file_size"
    t.datetime "foto4_updated_at"
    t.index ["subcategoriaproduto_id"], name: "index_produtos_on_subcategoriaproduto_id"
  end

  create_table "subcategoriaprodutos", force: :cascade do |t|
    t.string   "nome"
    t.integer  "categoriaproduto_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["categoriaproduto_id"], name: "index_subcategoriaprodutos_on_categoriaproduto_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
