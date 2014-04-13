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
end
