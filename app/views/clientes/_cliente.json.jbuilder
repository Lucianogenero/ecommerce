json.extract! cliente, :id, :nome, :cep, :endereco, :bairro, :cidade, :estado, :numero, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)