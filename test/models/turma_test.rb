require 'test_helper'

class TurmaTest < ActiveSupport::TestCase
  test "cria turma corretamente" do
     assert Turma.create(nome: "Jardim 1", professora: "Adrieli", professora_auxiliar: "Maria")
  end
  test "nao cria duas turmas com mesmo nome" do
    assert_raise ActiveRecord::RecordInvalid do
      2.times { Turma.create!(nome: "Jardim 1", professora: "Adrieli", professora_auxiliar: "Maria") }
    end
  end
end
