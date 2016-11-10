json.extract! destroy, :id, :Clientes, :nome, :cep, :created_at, :updated_at
json.url destroy_url(destroy, format: :json)