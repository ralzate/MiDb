class CreateInformacionAcademicas < ActiveRecord::Migration
  def change
    create_table :informacion_academicas do |t|
      t.string :tipo_de_dato
      t.string :nombre
      t.date :fecha_terminacion
      t.string :titulo_obtenido
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
