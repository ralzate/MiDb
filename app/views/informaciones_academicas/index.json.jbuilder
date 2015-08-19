json.array!(@informaciones_academicas) do |informacion_academica|
  json.extract! informacion_academica, :id, :tipo_de_dato, :nombre, :fecha_terminacion, :titulo_obtenido, :usuario_id
  json.url informacion_academica_url(informacion_academica, format: :json)
end
