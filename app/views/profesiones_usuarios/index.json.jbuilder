json.array!(@profesiones_usuarios) do |profesiones_usuario|
  json.extract! profesiones_usuario, :id, :usuario_id, :profesion_id
  json.url profesiones_usuario_url(profesiones_usuario, format: :json)
end
