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

ActiveRecord::Schema.define(version: 20140413154734) do

  create_table "alunos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diarios", force: true do |t|
    t.integer  "aluno_id"
    t.string   "em"
    t.string   "agiu"
    t.string   "como"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matriculas", force: true do |t|
    t.integer  "aluno_id"
    t.integer  "turma_id"
    t.integer  "ano_letivo"
    t.datetime "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matriculas", ["aluno_id"], name: "index_matriculas_on_aluno_id"
  add_index "matriculas", ["turma_id"], name: "index_matriculas_on_turma_id"

  create_table "turmas", force: true do |t|
    t.string   "nome"
    t.string   "professora"
    t.string   "professora_auxiliar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
