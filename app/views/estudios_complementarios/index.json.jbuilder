json.array!(@estudios_complementarios) do |estudios_complementario|
  json.extract! estudios_complementario, :id, :nombre, :entidad, :fecha_terminacion, :intensidad_horaria, :usuario_id
  json.url estudios_complementario_url(estudios_complementario, format: :json)
end
