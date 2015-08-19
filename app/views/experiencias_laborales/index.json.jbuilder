json.array!(@experiencias_laborales) do |experiencia_laboral|
  json.extract! experiencia_laboral, :id, :empresa, :cargo, :telefono, :fecha_incio, :fecha_terminacion, :usuario_id
  json.url experiencia_laboral_url(experiencia_laboral, format: :json)
end
