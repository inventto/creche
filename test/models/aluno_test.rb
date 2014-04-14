require 'test_helper'

class AlunoTest < ActiveSupport::TestCase
  test "cria com nome" do
    assert Aluno.create!(nome: "Lorenzo Paganini")
  end
  test "nao cria sem nome" do
    assert_raise ActiveRecord::RecordInvalid do
      Aluno.create!(nome: "")
    end
  end
  test "atualiza informacao" do
    @aluno = alunos(:one)
    assert_difference "Diario.count" do
      @aluno.hoje!("sono", "dormiu", "bem")
    end
    assert_no_difference "Diario.count" do
      @aluno.hoje!("sono", "dormiu", "bem")
    end
  end
end
