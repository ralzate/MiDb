# == Schema Information
#
# Table name: estudios_complementarios
#
#  id                 :integer          not null, primary key
#  nombre             :string(255)
#  entidad            :string(255)
#  fecha_terminacion  :date
#  intensidad_horaria :time
#  usuario_id         :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class EstudiosComplementario < ActiveRecord::Base
  belongs_to :usuario
  	def self.search(search)
		where("nombre like '%#{search}%' or entidad like '%#{search}%'")
	end
end
