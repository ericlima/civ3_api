# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160601185222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assuntos", force: true do |t|
    t.string   "nome"
    t.integer  "grupoassunto_id"
    t.integer  "responsavel_id"
    t.integer  "prazoqtd"
    t.string   "prazotipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assuntos", ["grupoassunto_id"], name: "index_assuntos_on_grupoassunto_id", using: :btree
  add_index "assuntos", ["responsavel_id"], name: "index_assuntos_on_responsavel_id", using: :btree

  create_table "departamentos", force: true do |t|
    t.string   "nome"
    t.string   "codigo"
    t.integer  "orgao_id"
    t.integer  "responsavel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departamentos", ["orgao_id"], name: "index_departamentos_on_orgao_id", using: :btree
  add_index "departamentos", ["responsavel_id"], name: "index_departamentos_on_responsavel_id", using: :btree

  create_table "grupoassuntos", force: true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itemmodos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.integer  "responsavel_id"
    t.integer  "assunto_id"
    t.integer  "itemmodo_id"
    t.integer  "itemtipo_id"
    t.integer  "prazoqtd"
    t.string   "prazotipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["assunto_id"], name: "index_items_on_assunto_id", using: :btree
  add_index "items", ["itemmodo_id"], name: "index_items_on_itemmodo_id", using: :btree
  add_index "items", ["itemtipo_id"], name: "index_items_on_itemtipo_id", using: :btree
  add_index "items", ["responsavel_id"], name: "index_items_on_responsavel_id", using: :btree

  create_table "itemtipos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orgaos", force: true do |t|
    t.string   "nome"
    t.string   "codigo"
    t.integer  "responsavel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orgaos", ["responsavel_id"], name: "index_orgaos_on_responsavel_id", using: :btree

  create_table "processoassuntoitemmovimentos", force: true do |t|
    t.integer  "processoassuntoitem_id"
    t.text     "descricao"
    t.datetime "datasolicitacao"
    t.datetime "dataatendimento"
    t.integer  "responsavel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "processoassuntoitemmovimentos", ["processoassuntoitem_id"], name: "index_processoassuntoitemmovimentos_on_processoassuntoitem_id", using: :btree
  add_index "processoassuntoitemmovimentos", ["responsavel_id"], name: "index_processoassuntoitemmovimentos_on_responsavel_id", using: :btree

  create_table "processoassuntoitems", force: true do |t|
    t.integer  "processoassunto_id"
    t.string   "nome"
    t.text     "descricao"
    t.integer  "responsavel_id"
    t.integer  "assunto_id"
    t.integer  "itemtipo_id"
    t.integer  "itemmodo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "processoassuntoitems", ["assunto_id"], name: "index_processoassuntoitems_on_assunto_id", using: :btree
  add_index "processoassuntoitems", ["itemmodo_id"], name: "index_processoassuntoitems_on_itemmodo_id", using: :btree
  add_index "processoassuntoitems", ["itemtipo_id"], name: "index_processoassuntoitems_on_itemtipo_id", using: :btree
  add_index "processoassuntoitems", ["processoassunto_id"], name: "index_processoassuntoitems_on_processoassunto_id", using: :btree
  add_index "processoassuntoitems", ["responsavel_id"], name: "index_processoassuntoitems_on_responsavel_id", using: :btree

  create_table "processos", force: true do |t|
    t.integer  "nomero"
    t.integer  "orgao_id"
    t.integer  "ano"
    t.integer  "responsavel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "processos", ["orgao_id"], name: "index_processos_on_orgao_id", using: :btree
  add_index "processos", ["responsavel_id"], name: "index_processos_on_responsavel_id", using: :btree

  create_table "responsavels", force: true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "email"
    t.integer  "GeoSiapID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
