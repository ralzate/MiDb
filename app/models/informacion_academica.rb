# == Schema Information
#
# Table name: informaciones_academicas
#
#  id                :integer          not null, primary key
#  tipo_de_dato      :string(255)
#  nombre            :string(255)
#  fecha_terminacion :date
#  titulo_obtenido   :string(255)
#  usuario_id        :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class InformacionAcademica < ActiveRecord::Base
  belongs_to :usuario
    def self.search(search)
		where("tipo_de_dato like '%#{search}%' or nombre like '%#{search}%' 
		or titulo_obtenido like '%#{search}%'")
	end
end
