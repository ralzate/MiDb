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
end
