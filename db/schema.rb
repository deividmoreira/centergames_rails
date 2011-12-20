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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111220193955) do

  create_table "cargos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "rg"
    t.string   "orgao_expedidor"
    t.string   "cpf"
    t.string   "cgc"
    t.boolean  "irregular"
    t.text     "motivo_irregularidade"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", :force => true do |t|
    t.integer  "rota_id"
    t.integer  "cargo_id"
    t.string   "endereco"
    t.string   "nome"
    t.string   "rg"
    t.string   "orgao_expedidor"
    t.string   "cpf"
    t.decimal  "percentual_gratificacao"
    t.boolean  "inativo"
    t.text     "motivo_inatividade"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locacoes", :force => true do |t|
    t.integer  "cliente_id"
    t.integer  "funcionario_id"
    t.integer  "mesa_id"
    t.integer  "valor_ficha_id"
    t.date     "data_locacao"
    t.decimal  "lucro"
    t.boolean  "encerrada"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mesas", :force => true do |t|
    t.integer  "relogio_id"
    t.integer  "tipo_mesa_id"
    t.boolean  "mesa_inativa"
    t.text     "motivo_inatividade"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relogios", :force => true do |t|
    t.string   "numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rota", :force => true do |t|
    t.string   "nome"
    t.boolean  "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_mesas", :force => true do |t|
    t.string   "tipo"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "valor_fichas", :force => true do |t|
    t.string   "descricao"
    t.decimal  "preco"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
