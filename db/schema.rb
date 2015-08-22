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

ActiveRecord::Schema.define(version: 20150821160906) do

  create_table "estudios_complementarios", force: true do |t|
    t.string   "nombre"
    t.string   "entidad"
    t.date     "fecha_terminacion"
    t.time     "intensidad_horaria"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estudios_complementarios", ["usuario_id"], name: "index_estudios_complementarios_on_usuario_id"

  create_table "experiencias_laborales", force: true do |t|
    t.string   "empresa"
    t.string   "cargo"
    t.string   "telefono"
    t.date     "fecha_inicio"
    t.date     "fecha_terminacion"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experiencias_laborales", ["usuario_id"], name: "index_experiencias_laborales_on_usuario_id"

  create_table "informaciones_academicas", force: true do |t|
    t.string   "tipo_de_dato"
    t.string   "nombre"
    t.date     "fecha_terminacion"
    t.string   "titulo_obtenido"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "informaciones_academicas", ["usuario_id"], name: "index_informaciones_academicas_on_usuario_id"

  create_table "profesiones", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profesiones_usuarios", force: true do |t|
    t.integer  "usuario_id"
    t.integer  "profesion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profesiones_usuarios", ["profesion_id"], name: "index_profesiones_usuarios_on_profesion_id"
  add_index "profesiones_usuarios", ["usuario_id"], name: "index_profesiones_usuarios_on_usuario_id"

  create_table "referencias_personales", force: true do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "profesion"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "referencias_personales", ["usuario_id"], name: "index_referencias_personales_on_usuario_id"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "users", force: true do |t|
    t.string   "nombre1",                default: "", null: false
    t.string   "nombre2",                default: "", null: false
    t.string   "apellido1",              default: "", null: false
    t.string   "apellido2",              default: "", null: false
    t.string   "cedula",                 default: "", null: false
    t.string   "profesion",              default: "", null: false
    t.string   "tarjeta_profesional",    default: "", null: false
    t.string   "estado_civil",           default: "", null: false
    t.string   "direccion",              default: "", null: false
    t.date     "fecha_nacimiento"
    t.string   "celular",                default: "", null: false
    t.string   "telefono",               default: "", null: false
    t.string   "perfil",                 default: "", null: false
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

end
