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

ActiveRecord::Schema.define(version: 2024_02_01_010308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administradors", force: :cascade do |t|
    t.string "nome"
    t.string "login"
    t.string "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "cep"
    t.string "estado"
    t.string "rua"
    t.string "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marcas", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservas", force: :cascade do |t|
    t.bigint "veiculo_id"
    t.bigint "cliente_id"
    t.integer "tempo_de_espera"
    t.decimal "valor_alugado"
    t.datetime "reservado_de"
    t.datetime "reservado_ate"
    t.boolean "pagamento_no_destino"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_reservas_on_cliente_id"
    t.index ["veiculo_id"], name: "index_reservas_on_veiculo_id"
  end

  create_table "veiculos", force: :cascade do |t|
    t.string "nome"
    t.string "cor"
    t.integer "qnt_passageiros"
    t.string "placa"
    t.decimal "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "marca_id"
    t.index ["marca_id"], name: "index_veiculos_on_marca_id"
  end

  add_foreign_key "reservas", "clientes"
  add_foreign_key "reservas", "veiculos"
  add_foreign_key "veiculos", "marcas"
end
