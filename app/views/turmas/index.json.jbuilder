json.array!(@turmas) do |turma|
  json.extract! turma, :id, :nome, :professora, :professora_auxiliar
  json.url turma_url(turma, format: :json)
end
