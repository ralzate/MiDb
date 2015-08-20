# == Schema Information
#
# Table name: profesiones_usuarios
#
#  id           :integer          not null, primary key
#  usuario_id   :integer
#  profesion_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class ProfesionesUsuario < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :profesion
    def self.search(search)
		where("")
	end
end
