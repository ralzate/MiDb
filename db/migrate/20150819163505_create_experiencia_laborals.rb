class CreateExperienciaLaborals < ActiveRecord::Migration
  def change
    create_table :experiencia_laborals do |t|
      t.string :empresa
      t.string :cargo
      t.string :telefono
      t.date :fecha_incio
      t.date :fecha_terminacion
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
