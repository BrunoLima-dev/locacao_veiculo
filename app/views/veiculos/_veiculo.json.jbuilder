json.extract! veiculo, :id, :nome, :cor, :qnt_passageiros, :placa, :valor, :created_at, :updated_at
json.url veiculo_url(veiculo, format: :json)
