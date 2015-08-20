# == Schema Information
#
# Table name: experiencias_laborales
#
#  id                :integer          not null, primary key
#  empresa           :string(255)
#  cargo             :string(255)
#  telefono          :string(255)
#  fecha_incio       :date
#  fecha_terminacion :date
#  usuario_id        :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class ExperienciaLaboral < ActiveRecord::Base
  	belongs_to :usuario
    def self.search(search)
		where("empresa like '%#{search}%' or cargo like '%#{search}%' 
		or telefono like '%#{search}%'")
	end
end
