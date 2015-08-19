class ProfesionesUsuario < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :profesion
end
