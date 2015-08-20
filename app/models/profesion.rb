# == Schema Information
#
# Table name: profesiones
#
#  id          :integer          not null, primary key
#  nombre      :string(255)
#  descripcion :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Profesion < ActiveRecord::Base
	def self.search(search)
		where("nombre like '%#{search}%' or descripcion like '%#{search}%'")
	end
end
