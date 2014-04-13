json.array!(@matriculas) do |matricula|
  json.extract! matricula, :id, :aluno_id, :turma_id, :ano_letivo, :data
  json.url matricula_url(matricula, format: :json)
end
