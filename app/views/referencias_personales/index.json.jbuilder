json.array!(@referencias_personales) do |referencias_personale|
  json.extract! referencias_personale, :id, :nombre, :telefono, :profesion, :usuario_id
  json.url referencias_personale_url(referencias_personale, format: :json)
end
